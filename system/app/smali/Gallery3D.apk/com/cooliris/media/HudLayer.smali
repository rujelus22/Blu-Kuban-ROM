.class public final Lcom/cooliris/media/HudLayer;
.super Lcom/cooliris/media/Layer;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/HudLayer$60;,
        Lcom/cooliris/media/HudLayer$DetailsListAdapter;,
        Lcom/cooliris/media/HudLayer$ResolverAdapter;,
        Lcom/cooliris/media/HudLayer$MediaType;,
        Lcom/cooliris/media/HudLayer$ShareType;
    }
.end annotation


# static fields
.field private static final CAMERA_BUTTON_ICON:I

.field private static final CAMERA_BUTTON_ICON_PRESSED:I

.field private static final GRID_MODE_ICON:I

.field private static final GRID_MODE_PRESSED_ICON:I

.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static MMS_TO:Ljava/lang/String;

.field private static final MOTION_INFO_ICON:I

.field private static final STACK_MODE_ICON:I

.field private static final STACK_MODE_PRESSED_ICON:I

.field private static final STACK_ROTATE_ICON:I

.field private static TAG:Ljava/lang/String;

.field private static final ZOOM_IN_ICON:I

.field private static final ZOOM_IN_ICON_PRESSED:I

.field private static final ZOOM_OUT_ICON:I

.field private static final ZOOM_OUT_ICON_PRESSED:I

.field public static defaultDestCount:I

.field public static defaultDestCountResult:Ljava/lang/String;


# instance fields
.field private iWhich:I

.field private mAlpha:F

.field private mAnimAlpha:F

.field private mAutoHide:Z

.field private mCachedCaption:Ljava/lang/String;

.field private mCachedCurrentLabel:Ljava/lang/String;

.field private mCachedPosition:Ljava/lang/String;

.field private final mCameraButtonAction:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mDetailDialog:Landroid/app/Dialog;

.field public final mFullRotateButtonAction:Ljava/lang/Runnable;

.field private mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

.field private mFullScreenShareSendMenu:[Lcom/cooliris/media/MenuBar$Menu;

.field final mFullscreenMenu:Lcom/cooliris/media/MenuBar;

.field private mGridLayer:Lcom/cooliris/media/GridLayer;

.field private final mGridModeButtonAction:Ljava/lang/Runnable;

.field private mLastTimeFullOpacity:F

.field private final mLoadingLayer:Lcom/cooliris/media/LoadingLayer;

.field private mMode:I

.field private final mMotionInfo:Lcom/cooliris/media/ImageButton;

.field private mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

.field private mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

.field private mPathBar:Lcom/cooliris/media/PathBarLayer;

.field private mRenameDialog:Landroid/app/Dialog;

.field final mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

.field private final mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

.field private mSetAs:Z

.field public mShareDialog:Landroid/content/DialogInterface;

.field private mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

.field private mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

.field private mSingleViewIntentBottomMenuVideo:[Lcom/cooliris/media/MenuBar$Menu;

.field private final mStackModeButtonAction:Ljava/lang/Runnable;

.field private mTimeBar:Lcom/cooliris/media/TimeBar;

.field private final mTopRightButton:Lcom/cooliris/media/ImageButton;

.field private final mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

.field private mView:Lcom/cooliris/media/RenderView;

.field private final mZoomInButton:Lcom/cooliris/media/ImageButton;

.field private final mZoomInButtonAction:Ljava/lang/Runnable;

.field private final mZoomOutButton:Lcom/cooliris/media/ImageButton;

.field private final mZoomOutButtonAction:Ljava/lang/Runnable;

.field private viewStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const v2, 0x7f020058

    const v1, 0x7f020057

    .line 84
    const-string v0, "HudLayer"

    sput-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020001

    sput v0, Lcom/cooliris/media/HudLayer;->CAMERA_BUTTON_ICON:I

    .line 137
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020002

    sput v0, Lcom/cooliris/media/HudLayer;->CAMERA_BUTTON_ICON_PRESSED:I

    .line 140
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020003

    sput v0, Lcom/cooliris/media/HudLayer;->ZOOM_IN_ICON:I

    .line 143
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020004

    sput v0, Lcom/cooliris/media/HudLayer;->ZOOM_IN_ICON_PRESSED:I

    .line 146
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020005

    sput v0, Lcom/cooliris/media/HudLayer;->ZOOM_OUT_ICON:I

    .line 149
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020006

    sput v0, Lcom/cooliris/media/HudLayer;->ZOOM_OUT_ICON_PRESSED:I

    .line 174
    const-string v0, "mms_to"

    sput-object v0, Lcom/cooliris/media/HudLayer;->MMS_TO:Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    sput v2, Lcom/cooliris/media/HudLayer;->GRID_MODE_ICON:I

    .line 203
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    sput v2, Lcom/cooliris/media/HudLayer;->GRID_MODE_PRESSED_ICON:I

    .line 238
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    sput v1, Lcom/cooliris/media/HudLayer;->STACK_MODE_ICON:I

    .line 241
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    sput v1, Lcom/cooliris/media/HudLayer;->STACK_MODE_PRESSED_ICON:I

    .line 243
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020032

    sput v0, Lcom/cooliris/media/HudLayer;->STACK_ROTATE_ICON:I

    .line 252
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020036

    sput v0, Lcom/cooliris/media/HudLayer;->MOTION_INFO_ICON:I

    .line 2929
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cooliris/media/HudLayer;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 21
    .parameter "context"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 82
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/HudLayer;->iWhich:I

    .line 102
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 104
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 106
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

    .line 108
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuVideo:[Lcom/cooliris/media/MenuBar$Menu;

    .line 110
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 112
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 114
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareSendMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 122
    new-instance v13, Lcom/cooliris/media/LoadingLayer;

    invoke-direct {v13}, Lcom/cooliris/media/LoadingLayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mLoadingLayer:Lcom/cooliris/media/LoadingLayer;

    .line 124
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mView:Lcom/cooliris/media/RenderView;

    .line 126
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/HudLayer;->mMode:I

    .line 151
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    .line 180
    new-instance v13, Lcom/cooliris/media/HudLayer$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$1;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mCameraButtonAction:Ljava/lang/Runnable;

    .line 205
    new-instance v13, Lcom/cooliris/media/HudLayer$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$2;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomInButtonAction:Ljava/lang/Runnable;

    .line 212
    new-instance v13, Lcom/cooliris/media/HudLayer$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$3;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButtonAction:Ljava/lang/Runnable;

    .line 219
    new-instance v13, Lcom/cooliris/media/HudLayer$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$4;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mGridModeButtonAction:Ljava/lang/Runnable;

    .line 225
    new-instance v13, Lcom/cooliris/media/HudLayer$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$5;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullRotateButtonAction:Ljava/lang/Runnable;

    .line 245
    new-instance v13, Lcom/cooliris/media/HudLayer$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$6;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mStackModeButtonAction:Ljava/lang/Runnable;

    .line 1301
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    .line 2110
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mShareDialog:Landroid/content/DialogInterface;

    .line 2462
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    .line 2693
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;

    .line 279
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    if-nez v13, :cond_bc

    .line 281
    new-instance v13, Lcom/cooliris/media/TimeBar;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/TimeBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    .line 282
    new-instance v13, Lcom/cooliris/media/PathBarLayer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/PathBarLayer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    .line 284
    :cond_bc
    new-instance v13, Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    const/high16 v14, 0x42c8

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v14, v14

    const/high16 v15, 0x42bc

    sget v16, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 287
    new-instance v13, Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    const/high16 v14, 0x41e8

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x422c

    sget v16, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    sget v14, Lcom/cooliris/media/HudLayer;->STACK_ROTATE_ICON:I

    sget v15, Lcom/cooliris/media/HudLayer;->STACK_ROTATE_ICON:I

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/HudLayer;->mFullRotateButtonAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 292
    new-instance v13, Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    .line 293
    new-instance v13, Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    const/high16 v14, 0x422c

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x422c

    sget v16, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    const/high16 v14, 0x422c

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x422c

    sget v16, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    sget v14, Lcom/cooliris/media/HudLayer;->ZOOM_IN_ICON:I

    sget v15, Lcom/cooliris/media/HudLayer;->ZOOM_IN_ICON_PRESSED:I

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/HudLayer;->mZoomInButtonAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    sget v14, Lcom/cooliris/media/HudLayer;->ZOOM_OUT_ICON:I

    sget v15, Lcom/cooliris/media/HudLayer;->ZOOM_OUT_ICON_PRESSED:I

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButtonAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 300
    new-instance v13, Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    const/high16 v14, 0x4250

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x4250

    sget v16, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    sget v14, Lcom/cooliris/media/HudLayer;->MOTION_INFO_ICON:I

    sget v15, Lcom/cooliris/media/HudLayer;->MOTION_INFO_ICON:I

    invoke-virtual {v13, v14, v15}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    .line 305
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060095

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f020052

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$7;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v10

    .line 319
    .local v10, shareViaMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060097

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02004c

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$8;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v7

    .line 337
    .local v7, sendViaMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02004b

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$9;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v6

    .line 352
    .local v6, playViaMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060025

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f020052

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$10;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v9

    .line 369
    .local v9, shareMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f06001f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f020044

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$11;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    .line 395
    .local v4, deleteMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060028

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02004a

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$12;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v5

    .line 411
    .local v5, moreMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06002b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02004f

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$13;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v11

    .line 431
    .local v11, slideShowMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f06002d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02004a

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$14;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$14;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v12

    .line 441
    .local v12, topMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060042

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f020051

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$15;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$15;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v8

    .line 456
    .local v8, setAsMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f020021

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$16;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$16;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v3

    .line 494
    .local v3, DoneMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f060023

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02001e

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    new-instance v14, Lcom/cooliris/media/HudLayer$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$17;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v2

    .line 514
    .local v2, CancelMenu:Lcom/cooliris/media/MenuBar$Menu;
    new-instance v13, Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    .line 515
    new-instance v13, Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    .line 516
    new-instance v13, Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/cooliris/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    .line 518
    sget-boolean v13, Lcom/cooliris/media/Utils;->mOriginalHudlayer:Z

    if-eqz v13, :cond_45a

    .line 519
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 522
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareSendMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 526
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuVideo:[Lcom/cooliris/media/MenuBar$Menu;

    .line 556
    :goto_3d2
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    const/4 v14, 0x3

    new-array v14, v14, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v15, 0x0

    new-instance v16, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v18, 0x7f060029

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    new-instance v17, Lcom/cooliris/media/HudLayer$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$18;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/cooliris/media/MenuBar$Menu$Builder;

    const-string v17, ""

    invoke-direct/range {v16 .. v17}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Lcom/cooliris/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v18, 0x7f06002a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    new-instance v17, Lcom/cooliris/media/HudLayer$19;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$19;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 580
    return-void

    .line 532
    :cond_45a
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 535
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 538
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mFullScreenShareSendMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 542
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    .line 546
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

    .line 550
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/cooliris/media/MenuBar$Menu;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuVideo:[Lcom/cooliris/media/MenuBar$Menu;

    goto/16 :goto_3d2
.end method

.method private IsImageExceptShareViaType(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 2060
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2062
    const/4 v0, 0x1

    .line 2064
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 2068
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.mms.Mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.mms.kor.ui.compose.UCFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.email.activity.MessageCompose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.app.FileTransferClient.FTCDeviceListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2086
    :cond_5a
    const/4 v0, 0x1

    .line 2088
    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private IsMultiSendViaType(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 2092
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.mms.Mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.mms.kor.ui.compose.UCFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.email.activity.MessageCompose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.app.FileTransferClient.FTCDeviceListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2105
    :cond_5a
    const/4 v0, 0x1

    .line 2107
    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 2047
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.app.dlna.ui.AddinActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2049
    const/4 v0, 0x1

    .line 2051
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 2024
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.mms.Mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.mms.kor.ui.compose.UCFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.email.activity.MessageCompose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.sec.android.app.FileTransferClient.FTCDeviceListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2041
    :cond_5a
    const/4 v0, 0x1

    .line 2043
    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private SetDefaultDest([Lcom/cooliris/media/PopupMenu$Option;ZZILjava/util/ArrayList;Lcom/cooliris/media/MediaItem;)[Lcom/cooliris/media/PopupMenu$Option;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/cooliris/media/PopupMenu$Option;",
            "ZZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Lcom/cooliris/media/MediaItem;",
            ")[",
            "Lcom/cooliris/media/PopupMenu$Option;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0600b5

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 3206
    .line 3209
    if-eqz p3, :cond_c6

    .line 3210
    invoke-direct {p0, p5}, Lcom/cooliris/media/HudLayer;->checkDrmItems(Ljava/util/ArrayList;)Z

    move-result v0

    .line 3218
    :goto_b
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3219
    const-string v3, "PREFS_COUNT"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/cooliris/media/HudLayer;->defaultDestCount:I

    .line 3221
    const-string v3, "PREFS_RESULT"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cooliris/media/HudLayer;->defaultDestCountResult:Ljava/lang/String;

    .line 3223
    sget-object v3, Lcom/cooliris/media/HudLayer;->defaultDestCountResult:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 3224
    const-string v3, ""

    sput-object v3, Lcom/cooliris/media/HudLayer;->defaultDestCountResult:Ljava/lang/String;

    .line 3226
    :cond_29
    iget-object v3, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3227
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3230
    sget v5, Lcom/cooliris/media/HudLayer;->defaultDestCount:I

    if-ne v5, v7, :cond_d0

    .line 3231
    const-string v5, "PREFS_SINGLE"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3233
    if-nez v2, :cond_4e

    .line 3234
    const-string v2, ""

    .line 3244
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3246
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x17

    if-le v3, v5, :cond_86

    .line 3247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x16

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3259
    :cond_86
    :goto_86
    if-ne p4, v7, :cond_c5

    if-nez v0, :cond_c5

    if-nez p2, :cond_c5

    .line 3262
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cooliris/media/PopupMenu$Option;

    new-instance v3, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/cooliris/media/HudLayer$55;

    invoke-direct {v6, p0}, Lcom/cooliris/media/HudLayer$55;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v3, v2, v5, v6}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v3, v0, v1

    new-instance v1, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$56;

    invoke-direct {v3, p0}, Lcom/cooliris/media/HudLayer$56;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v1, v4, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v1, v0, v7

    .line 3406
    invoke-static {p1, v0}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object p1

    .line 3408
    :cond_c5
    return-object p1

    .line 3212
    :cond_c6
    if-eqz p6, :cond_e3

    .line 3213
    iget-object v0, p6, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_b

    .line 3252
    :cond_d0
    sget v2, Lcom/cooliris/media/HudLayer;->defaultDestCount:I

    if-eq v2, v7, :cond_e1

    .line 3253
    sput v1, Lcom/cooliris/media/HudLayer;->defaultDestCount:I

    .line 3254
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    :cond_e1
    move-object v2, v3

    goto :goto_86

    :cond_e3
    move v0, v1

    goto/16 :goto_b
.end method

.method static synthetic access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->setResultForMultiPickNormal()V

    return-void
.end method

.method static synthetic access$1102(Lcom/cooliris/media/HudLayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->getPrintInfo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->getEditInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->getDetailInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->getSetAsInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->setRenameFile()V

    return-void
.end method

.method static synthetic access$1700(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/HudLayer;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/cooliris/media/HudLayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/cooliris/media/HudLayer;->iWhich:I

    return v0
.end method

.method static synthetic access$1802(Lcom/cooliris/media/HudLayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/cooliris/media/HudLayer;->iWhich:I

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/HudLayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/cooliris/media/HudLayer;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/cooliris/media/HudLayer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/cooliris/media/HudLayer;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/HudLayer;Ljava/util/ArrayList;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/cooliris/media/HudLayer;->checkDrmForwarding(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/cooliris/media/HudLayer;ZLcom/cooliris/media/HudLayer$ShareType;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/HudLayer;->updateShareMenu(ZLcom/cooliris/media/HudLayer$ShareType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cooliris/media/HudLayer;Ljava/util/ArrayList;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/cooliris/media/HudLayer;->checkDrmItems(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/cooliris/media/HudLayer;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/cooliris/media/HudLayer;->buildDeleteOptions(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->buildMoreOptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/cooliris/media/HudLayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->selectedCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/cooliris/media/HudLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->updateSetAsMenu()V

    return-void
.end method

.method private addOnlineAlbums(ILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/cooliris/media/PopupMenu$Option;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;[",
            "Lcom/cooliris/media/PopupMenu$Option;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3417
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_27

    .line 3418
    :cond_1f
    sget-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v1, "addOnlineAlbums : selection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_26
    :goto_26
    return-void

    .line 3422
    :cond_27
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3424
    new-instance v0, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$57;

    invoke-direct {v3, p0}, Lcom/cooliris/media/HudLayer$57;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v0, p4, p1

    .line 3452
    add-int/lit8 v0, p1, 0x1

    new-instance v1, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/cooliris/media/HudLayer$58;

    invoke-direct {v4, p0}, Lcom/cooliris/media/HudLayer$58;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v1, p4, v0

    goto :goto_26
.end method

.method private addOnlineAlbumsForUSCC(ILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/cooliris/media/PopupMenu$Option;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;[",
            "Lcom/cooliris/media/PopupMenu$Option;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3488
    .line 3489
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    invoke-virtual {p5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3493
    sget-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v1, "addOnlineAlbumsForUSCC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    if-eqz p3, :cond_66

    :try_start_15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v0

    if-nez v0, :cond_66

    .line 3500
    new-instance v0, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$59;

    invoke-direct {v3, p0, p5}, Lcom/cooliris/media/HudLayer$59;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v0, p4, p1
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_66} :catch_67

    .line 3514
    :cond_66
    :goto_66
    return-void

    .line 3511
    :catch_67
    move-exception v0

    .line 3512
    sget-object v1, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException at addOnlineAlbum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method private buildDeleteOptions(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1150
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v2, 0x0

    new-instance v3, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v5, 0x7f020044

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/cooliris/media/HudLayer$35;

    invoke-direct {v6, p0}, Lcom/cooliris/media/HudLayer$35;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v4, 0x7f020043

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Lcom/cooliris/media/HudLayer$36;

    invoke-direct {v4, p0}, Lcom/cooliris/media/HudLayer$36;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v2, v1, v7

    .line 1170
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    aget-object v0, v0, v7

    iput-object v1, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 1171
    sget-boolean v0, Lcom/cooliris/media/Utils;->mOriginalHudlayer:Z

    if-nez v0, :cond_65

    .line 1172
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    aget-object v0, v0, v7

    iput-object v1, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 1174
    :cond_65
    return-void
.end method

.method private buildMoreOptions()V
    .registers 28

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v16

    .line 651
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 652
    const/4 v12, 0x0

    .line 653
    const/4 v11, 0x0

    .line 654
    const/4 v10, 0x0

    .line 656
    sget-object v9, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    .line 658
    const/4 v8, 0x0

    .line 660
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 661
    const/4 v5, 0x0

    .line 662
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9b

    .line 663
    const/4 v4, -0x1

    .line 664
    const/4 v3, 0x0

    move v13, v3

    move v14, v4

    move-object v15, v5

    :goto_23
    move/from16 v0, v17

    if-ge v13, v0, :cond_9b

    .line 665
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaBucket;

    .line 666
    const/4 v5, 0x0

    .line 667
    const/4 v4, 0x0

    .line 668
    iget-object v6, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_82

    iget-object v6, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_82

    .line 669
    iget-object v4, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 670
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v3

    move-object v7, v4

    .line 676
    :goto_45
    const/4 v3, 0x0

    move v4, v14

    move-object v5, v15

    move v14, v3

    :goto_49
    if-ge v14, v6, :cond_95

    .line 677
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem;

    .line 678
    if-nez v5, :cond_69

    .line 679
    iget-object v5, v3, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 680
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    .line 681
    iget-object v15, v3, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 682
    if-eqz v15, :cond_69

    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v15, v19, v21

    if-eqz v15, :cond_69

    .line 688
    const-string v5, "text/plain"

    .line 691
    :cond_69
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v15

    if-ne v4, v15, :cond_7e

    .line 693
    iget-object v15, v3, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v15, :cond_7e

    .line 694
    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 695
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_7e
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_49

    .line 671
    :cond_82
    iget-object v6, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v6, :cond_6fc

    .line 673
    iget-object v4, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 674
    iget-object v3, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v3

    move v6, v3

    move-object v7, v4

    goto :goto_45

    .line 664
    :cond_95
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v14, v4

    move-object v15, v5

    goto :goto_23

    .line 702
    :cond_9b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v3}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    aget-object v3, v4, v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 1145
    :cond_c8
    :goto_c8
    return-void

    .line 709
    :cond_c9
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUse_Tn_Us_TMO:Z

    if-eqz v3, :cond_d7

    .line 710
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/HudLayer;->runNoSelectionMoreMenu()V

    goto :goto_c8

    .line 716
    :cond_d7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_111

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v3}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    aget-object v3, v4, v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_c8

    .line 725
    :cond_111
    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_117

    .line 726
    const/4 v12, 0x1

    .line 728
    :cond_117
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_6f5

    .line 729
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaBucket;

    .line 730
    iget-object v5, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 731
    if-eqz v5, :cond_c8

    .line 734
    iget-wide v6, v5, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v13, -0x1

    cmp-long v4, v6, v13

    if-eqz v4, :cond_4b8

    const/4 v4, 0x1

    .line 735
    :goto_132
    iget-object v6, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_13e

    iget-object v6, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4bb

    .line 736
    :cond_13e
    const/4 v6, 0x1

    .line 737
    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v7

    move-object v3, v9

    move v5, v4

    move v4, v11

    .line 779
    :goto_146
    new-instance v10, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f020029

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v11, Lcom/cooliris/media/HudLayer$20;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/cooliris/media/HudLayer$20;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v10, v8, v9, v11}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 800
    new-instance v11, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f02002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v12, Lcom/cooliris/media/HudLayer$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/cooliris/media/HudLayer$21;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v11, v8, v9, v12}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 808
    new-instance v12, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06009f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f02002c

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v13, Lcom/cooliris/media/HudLayer$22;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cooliris/media/HudLayer$22;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v12, v8, v9, v13}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 815
    new-instance v13, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v9, 0x7f060041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v14, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v14, 0x7f02002a

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v14, Lcom/cooliris/media/HudLayer$23;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cooliris/media/HudLayer$23;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v13, v8, v9, v14}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 844
    new-instance v14, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060089

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f02002e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v15, Lcom/cooliris/media/HudLayer$24;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/cooliris/media/HudLayer$24;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v14, v8, v9, v15}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 852
    new-instance v8, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v15, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v15, 0x7f06002e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v17, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v17, 0x7f020036

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    new-instance v17, Lcom/cooliris/media/HudLayer$25;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$25;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v9, v15, v0}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 859
    new-instance v9, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v17, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v17, 0x7f060095

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v18, 0x7f020052

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    new-instance v18, Lcom/cooliris/media/HudLayer$26;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$26;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v15, v0, v1}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 873
    new-instance v15, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v18, 0x7f06003e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget-object v19, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v19, 0x7f02002d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v19, Lcom/cooliris/media/HudLayer$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$27;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 886
    new-instance v17, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget-object v19, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v19, 0x7f060042

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget-object v20, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v20, 0x7f020035

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    new-instance v20, Lcom/cooliris/media/HudLayer$28;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$28;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v17 .. v20}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 893
    new-instance v18, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0600a2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020030

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/cooliris/media/HudLayer$29;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$29;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 900
    new-instance v19, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget-object v21, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v21, 0x7f06002b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget-object v22, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v22, 0x7f02004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$30;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$30;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v19 .. v22}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 919
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060096

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget-object v23, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v23, 0x7f02004b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    new-instance v23, Lcom/cooliris/media/HudLayer$31;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$31;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v20 .. v23}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 929
    new-instance v21, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f06003f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020033

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/cooliris/media/HudLayer$32;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$32;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 937
    new-instance v22, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget-object v24, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v24, 0x7f060040

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget-object v25, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v25, 0x7f020034

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    new-instance v25, Lcom/cooliris/media/HudLayer$33;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$33;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct/range {v22 .. v25}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 946
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v8, v23, v24

    .line 950
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/16 v24, 0x0

    aput-object v9, v8, v24

    .line 954
    const/4 v8, 0x1

    new-array v0, v8, [Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v24, v0

    const/4 v8, 0x0

    aput-object v15, v24, v8

    .line 958
    invoke-static/range {v16 .. v16}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v9

    .line 962
    const/4 v8, 0x1

    new-array v0, v8, [Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v16, v0

    const/4 v8, 0x0

    aput-object v17, v16, v8

    .line 968
    if-nez v5, :cond_41b

    if-eqz v6, :cond_52d

    .line 969
    :cond_41b
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    move-object v15, v8

    .line 977
    :goto_41f
    if-eqz v5, :cond_536

    .line 978
    const/4 v8, 0x0

    new-array v10, v8, [Lcom/cooliris/media/PopupMenu$Option;

    .line 979
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1023
    :goto_427
    const/4 v12, 0x0

    .line 1025
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_437

    sget-boolean v11, Lcom/cooliris/media/Utils;->mOriginalHudlayer:Z

    if-nez v11, :cond_437

    .line 1030
    :cond_437
    if-nez v6, :cond_6c2

    if-eqz v9, :cond_6c2

    .line 1036
    if-eqz v5, :cond_5c6

    .line 1037
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_5c1

    .line 1038
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1042
    :goto_44b
    const/4 v13, 0x0

    new-array v14, v13, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1043
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v26, v13

    move-object v13, v14

    move-object v14, v11

    move-object/from16 v11, v26

    .line 1074
    :goto_457
    if-nez v4, :cond_65d

    .line 1075
    sget-object v4, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    if-ne v3, v4, :cond_649

    .line 1076
    invoke-static {v12, v14}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    .line 1117
    :cond_461
    :goto_461
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUse_Tn_Us_TMO:Z

    if-eqz v3, :cond_48d

    .line 1118
    const/4 v3, 0x0

    new-array v4, v3, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v8

    .line 1121
    if-eqz v9, :cond_483

    iget-object v3, v9, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_483

    iget-object v3, v9, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v10, ".dcf"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_483

    .line 1122
    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/cooliris/media/MediaItem;->isDrm:Z

    :cond_483
    move-object/from16 v3, p0

    .line 1124
    invoke-direct/range {v3 .. v9}, Lcom/cooliris/media/HudLayer;->SetDefaultDest([Lcom/cooliris/media/PopupMenu$Option;ZZILjava/util/ArrayList;Lcom/cooliris/media/MediaItem;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 1127
    invoke-static {v12, v3}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    .line 1131
    :cond_48d
    move-object/from16 v0, v23

    invoke-static {v12, v0}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6cb

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iput-object v3, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_c8

    .line 734
    :cond_4b8
    const/4 v4, 0x0

    goto/16 :goto_132

    .line 739
    :cond_4bb
    iget-object v8, v3, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 740
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 742
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v10

    .line 743
    const/4 v3, 0x1

    if-ne v7, v3, :cond_4fd

    .line 744
    if-nez v10, :cond_4fa

    .line 745
    sget-object v5, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    .line 766
    :cond_4d3
    :goto_4d3
    const/4 v3, 0x1

    if-ne v7, v3, :cond_51d

    .line 767
    const/4 v6, 0x1

    .line 769
    if-eqz v8, :cond_6ef

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6ef

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6ef

    .line 770
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem;

    invoke-static {v9, v3}, Lcom/cooliris/media/DetailMode;->updateFilename(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    move-object v3, v5

    move v5, v4

    move v4, v6

    move v6, v12

    goto/16 :goto_146

    .line 747
    :cond_4fa
    sget-object v5, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    goto :goto_4d3

    .line 751
    :cond_4fd
    const/4 v3, 0x1

    move v6, v3

    move-object v5, v9

    :goto_500
    if-ge v6, v7, :cond_4d3

    .line 752
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    .line 753
    if-eq v10, v3, :cond_511

    .line 755
    sget-object v5, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_MIXED:Lcom/cooliris/media/HudLayer$MediaType;

    goto :goto_4d3

    .line 758
    :cond_511
    if-nez v10, :cond_51a

    .line 759
    sget-object v3, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    .line 751
    :goto_515
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v3

    goto :goto_500

    .line 761
    :cond_51a
    sget-object v3, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    goto :goto_515

    .line 773
    :cond_51d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    if-nez v3, :cond_6e9

    .line 774
    const/4 v6, 0x1

    move-object v3, v5

    move v5, v4

    move v4, v11

    goto/16 :goto_146

    .line 972
    :cond_52d
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v15, 0x0

    aput-object v18, v8, v15

    move-object v15, v8

    goto/16 :goto_41f

    .line 981
    :cond_536
    if-eqz v9, :cond_53c

    iget-object v8, v9, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-nez v8, :cond_544

    .line 982
    :cond_53c
    const/4 v8, 0x0

    new-array v10, v8, [Lcom/cooliris/media/PopupMenu$Option;

    .line 983
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_427

    .line 985
    :cond_544
    iget-boolean v8, v9, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v8, :cond_550

    .line 986
    const/4 v8, 0x0

    new-array v10, v8, [Lcom/cooliris/media/PopupMenu$Option;

    .line 987
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_427

    .line 989
    :cond_550
    sget-boolean v8, Lcom/cooliris/media/Utils;->mSupportEdit:Z

    if-eqz v8, :cond_593

    .line 990
    sget-boolean v8, Lcom/cooliris/media/Utils;->mSupportMotionTilt:Z

    if-eqz v8, :cond_583

    .line 991
    const/4 v8, 0x5

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/16 v17, 0x0

    aput-object v10, v8, v17

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v12, v8, v10

    const/4 v10, 0x3

    aput-object v13, v8, v10

    const/4 v10, 0x4

    aput-object v14, v8, v10

    .line 1011
    :goto_56b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v10}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5b4

    .line 1012
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v11, 0x0

    aput-object v19, v10, v11

    move-object/from16 v26, v10

    move-object v10, v8

    move-object/from16 v8, v26

    goto/16 :goto_427

    .line 995
    :cond_583
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v14, 0x0

    aput-object v10, v8, v14

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v12, v8, v10

    const/4 v10, 0x3

    aput-object v13, v8, v10

    goto :goto_56b

    .line 1000
    :cond_593
    sget-boolean v8, Lcom/cooliris/media/Utils;->mSupportMotionTilt:Z

    if-eqz v8, :cond_5a7

    .line 1001
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v12, 0x0

    aput-object v10, v8, v12

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v13, v8, v10

    const/4 v10, 0x3

    aput-object v14, v8, v10

    goto :goto_56b

    .line 1005
    :cond_5a7
    const/4 v8, 0x3

    new-array v8, v8, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v12, 0x0

    aput-object v10, v8, v12

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v13, v8, v10

    goto :goto_56b

    .line 1016
    :cond_5b4
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v11, 0x0

    aput-object v20, v10, v11

    move-object/from16 v26, v10

    move-object v10, v8

    move-object/from16 v8, v26

    goto/16 :goto_427

    .line 1040
    :cond_5c1
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_44b

    .line 1044
    :cond_5c6
    iget-boolean v11, v9, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v11, :cond_5d5

    .line 1045
    const/4 v11, 0x0

    new-array v14, v11, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1046
    const/4 v11, 0x0

    new-array v13, v11, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1047
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_457

    .line 1048
    :cond_5d5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_5eb

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v13, 0x3

    if-ne v11, v13, :cond_635

    .line 1050
    :cond_5eb
    const/4 v11, 0x3

    new-array v14, v11, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v11, 0x0

    aput-object v21, v14, v11

    const/4 v11, 0x1

    aput-object v22, v14, v11

    const/4 v11, 0x2

    new-instance v13, Lcom/cooliris/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06002b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02004f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v19, Lcom/cooliris/media/HudLayer$34;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/HudLayer$34;-><init>(Lcom/cooliris/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v13, v0, v1, v2}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v13, v14, v11

    .line 1063
    const/4 v11, 0x0

    new-array v13, v11, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1065
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_457

    .line 1067
    :cond_635
    const/4 v11, 0x3

    new-array v14, v11, [Lcom/cooliris/media/PopupMenu$Option;

    const/4 v11, 0x0

    aput-object v21, v14, v11

    const/4 v11, 0x1

    aput-object v22, v14, v11

    const/4 v11, 0x2

    aput-object v19, v14, v11

    .line 1070
    const/4 v11, 0x0

    new-array v13, v11, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1071
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_457

    .line 1077
    :cond_649
    sget-object v4, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    if-ne v3, v4, :cond_653

    .line 1078
    invoke-static {v12, v13}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1079
    :cond_653
    sget-object v4, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_MIXED:Lcom/cooliris/media/HudLayer$MediaType;

    if-ne v3, v4, :cond_461

    .line 1080
    invoke-static {v12, v11}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1082
    :cond_65d
    iget-wide v0, v9, Lcom/cooliris/media/MediaItem;->mLatitude:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v4, v17, v19

    if-eqz v4, :cond_6e7

    iget-wide v0, v9, Lcom/cooliris/media/MediaItem;->mLongitude:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v4, v17, v19

    if-eqz v4, :cond_6e7

    .line 1083
    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v4

    .line 1085
    :goto_677
    sget-object v11, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    if-ne v3, v11, :cond_6b0

    .line 1087
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_6a5

    .line 1089
    invoke-static {v3, v10}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 1094
    :goto_690
    invoke-static {v3, v14}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_6aa

    .line 1097
    invoke-static {v3, v15}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1092
    :cond_6a5
    invoke-static {v3, v10}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    goto :goto_690

    .line 1099
    :cond_6aa
    invoke-static {v3, v15}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1102
    :cond_6b0
    sget-object v10, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    if-ne v3, v10, :cond_6e4

    .line 1103
    sget-boolean v3, Lcom/cooliris/media/Utils;->mOriginalHudlayer:Z

    if-nez v3, :cond_6bc

    .line 1104
    invoke-static {v4, v8}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v4

    .line 1106
    :cond_6bc
    invoke-static {v4, v15}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1112
    :cond_6c2
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1113
    invoke-static {v12, v3}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v12

    goto/16 :goto_461

    .line 1141
    :cond_6cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 1142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v5}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v5

    aget-object v4, v5, v4

    iput-object v3, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_c8

    :cond_6e4
    move-object v12, v4

    goto/16 :goto_461

    :cond_6e7
    move-object v4, v12

    goto :goto_677

    :cond_6e9
    move-object v3, v5

    move v6, v12

    move v5, v4

    move v4, v11

    goto/16 :goto_146

    :cond_6ef
    move-object v3, v5

    move v5, v4

    move v4, v6

    move v6, v12

    goto/16 :goto_146

    :cond_6f5
    move v7, v8

    move-object v3, v9

    move v5, v10

    move v4, v11

    move v6, v12

    goto/16 :goto_146

    :cond_6fc
    move v6, v4

    move-object v7, v5

    goto/16 :goto_45
.end method

.method private checkDrmForwarding(Ljava/util/ArrayList;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2393
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2394
    const/4 v2, 0x0

    .line 2396
    iget-object v4, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_63

    iget-object v4, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 2397
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2402
    :goto_20
    if-eqz v0, :cond_5

    .line 2407
    :try_start_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2408
    if-eqz v0, :cond_26

    .line 2411
    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_26

    iget-boolean v4, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v4, :cond_26

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/cooliris/drm/DrmChecker;->isForwardingNotAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2412
    sget-object v2, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item.isDrm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->showDrmShareNotification()V
    :try_end_61
    .catch Ljava/util/ConcurrentModificationException; {:try_start_22 .. :try_end_61} :catch_6e

    move v0, v1

    .line 2422
    :goto_62
    return v0

    .line 2398
    :cond_63
    iget-object v4, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v4, :cond_76

    .line 2399
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_20

    .line 2417
    :catch_6e
    move-exception v0

    .line 2418
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    move v0, v1

    .line 2419
    goto :goto_62

    .line 2422
    :cond_74
    const/4 v0, 0x0

    goto :goto_62

    :cond_76
    move-object v0, v2

    goto :goto_20
.end method

.method private checkDrmItems(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2363
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v2

    .line 2365
    :goto_6
    if-ge v5, v6, :cond_6b

    .line 2366
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2367
    const/4 v1, 0x0

    .line 2369
    iget-object v3, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2370
    iget-object v1, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2371
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v3, v1

    move v1, v0

    :goto_23
    move v4, v2

    .line 2376
    :goto_24
    if-ge v4, v1, :cond_6c

    .line 2377
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2378
    if-nez v0, :cond_45

    .line 2376
    :cond_2e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_24

    .line 2372
    :cond_32
    iget-object v3, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v3, :cond_70

    .line 2373
    iget-object v1, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2374
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v0

    move-object v3, v1

    move v1, v0

    goto :goto_23

    .line 2382
    :cond_45
    iget-object v7, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_2e

    iget-boolean v7, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v7, :cond_2e

    .line 2383
    sget-object v1, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item.isDrm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->showDrmShareNotification()V

    .line 2385
    const/4 v2, 0x1

    .line 2389
    :cond_6b
    return v2

    .line 2365
    :cond_6c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_70
    move-object v3, v1

    move v1, v2

    goto :goto_23
.end method

.method private checkSetAsDisabled(Ljava/util/ArrayList;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, selection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v5, 0x0

    .line 2427
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2428
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    const/4 v4, 0x0

    .line 2430
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_3e

    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2431
    iget-object v4, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2436
    :cond_20
    :goto_20
    if-eqz v4, :cond_5

    .line 2439
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem;

    .line 2440
    .local v3, item:Lcom/cooliris/media/MediaItem;
    if-eqz v3, :cond_26

    .line 2443
    iget-object v6, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/cooliris/drm/DrmChecker;->hasSetAsRight(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d

    const/4 v5, 0x1

    .line 2447
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/cooliris/media/MediaItem;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_3d
    return v5

    .line 2432
    .restart local v0       #bucket:Lcom/cooliris/media/MediaBucket;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_3e
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v6, :cond_20

    .line 2433
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v6}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_20
.end method

.method private computeSizeForPathbar()V
    .registers 5

    .prologue
    .line 1286
    iget v1, p0, Lcom/cooliris/media/Layer;->mWidth:F

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    const/high16 v0, 0x422c

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v2

    :goto_10
    sub-float v0, v1, v0

    .line 1289
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    const/high16 v2, 0x421c

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/cooliris/media/PathBarLayer;->setSize(FF)V

    .line 1290
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer;->recomputeComponents()V

    .line 1291
    return-void

    .line 1286
    :cond_26
    const/high16 v0, 0x42d8

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v2

    goto :goto_10
.end method

.method private static final concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;
    .registers 7
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v4, 0x0

    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, C:[Lcom/cooliris/media/PopupMenu$Option;
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    move-object v1, v0

    .line 1189
    .end local v0           #C:[Lcom/cooliris/media/PopupMenu$Option;
    .local v1, C:[Lcom/cooliris/media/PopupMenu$Option;
    :goto_7
    return-object v1

    .line 1180
    .end local v1           #C:[Lcom/cooliris/media/PopupMenu$Option;
    .restart local v0       #C:[Lcom/cooliris/media/PopupMenu$Option;
    :cond_8
    if-nez p0, :cond_d

    .line 1181
    move-object v0, p1

    :goto_b
    move-object v1, v0

    .line 1189
    .end local v0           #C:[Lcom/cooliris/media/PopupMenu$Option;
    .restart local v1       #C:[Lcom/cooliris/media/PopupMenu$Option;
    goto :goto_7

    .line 1182
    .end local v1           #C:[Lcom/cooliris/media/PopupMenu$Option;
    .restart local v0       #C:[Lcom/cooliris/media/PopupMenu$Option;
    :cond_d
    if-nez p1, :cond_11

    .line 1183
    move-object v0, p0

    goto :goto_b

    .line 1185
    :cond_11
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [Lcom/cooliris/media/PopupMenu$Option;

    .end local v0           #C:[Lcom/cooliris/media/PopupMenu$Option;
    check-cast v0, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1186
    .restart local v0       #C:[Lcom/cooliris/media/PopupMenu$Option;
    array-length v2, p0

    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b
.end method

.method private getDetailInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2465
    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    .line 2466
    .local v1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2467
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2468
    const/4 v3, 0x1

    .line 2470
    .local v3, foundDataToDisplay:Z
    if-nez v1, :cond_42

    .line 2471
    const/4 v3, 0x0

    .line 2487
    :goto_22
    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 2488
    if-eqz v3, :cond_41

    .line 2489
    const v5, 0x7f060018

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2490
    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/cooliris/media/HudLayer$48;

    invoke-direct {v6, p0, v2}, Lcom/cooliris/media/HudLayer$48;-><init>(Lcom/cooliris/media/HudLayer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2501
    :cond_41
    return-void

    .line 2473
    :cond_42
    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/cooliris/media/DetailMode;->populateDetailModeStrings(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2475
    .local v4, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/DetailMode$DetailsItem;>;"
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->selectedCheck()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2478
    if-nez v4, :cond_52

    .line 2479
    const/4 v3, 0x0

    goto :goto_22

    .line 2481
    :cond_52
    new-instance v0, Lcom/cooliris/media/HudLayer$DetailsListAdapter;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-direct {v0, p0, v5, v4}, Lcom/cooliris/media/HudLayer$DetailsListAdapter;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2483
    .local v0, DetailsListAdapter:Lcom/cooliris/media/HudLayer$DetailsListAdapter;
    invoke-virtual {v2, v0, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_22
.end method

.method private getEditInfo()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2637
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2638
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v0

    .line 2639
    if-nez v0, :cond_e

    .line 2654
    :goto_d
    return-void

    .line 2642
    :cond_e
    iput-boolean v4, p0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    .line 2644
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2645
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2646
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2647
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2649
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2650
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2652
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method private getPrintInfo()V
    .registers 5

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2620
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v0

    .line 2621
    if-nez v0, :cond_d

    .line 2634
    :goto_c
    return-void

    .line 2624
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    .line 2626
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.PRINT_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2627
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2629
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2630
    const-string v2, "android.intent.extra.TITLE"

    const-string v3, "gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2631
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2633
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method private getSetAsInfo()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2504
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2505
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v2

    .line 2506
    if-nez v2, :cond_e

    .line 2558
    :goto_d
    return-void

    .line 2509
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    .line 2510
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 2512
    iget-object v0, v2, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->hasSetAsRight(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2513
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_d

    .line 2518
    :cond_35
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2519
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f060042

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2521
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2522
    iget-object v0, v2, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, v2, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cooliris/media/Util;->createSetAsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2523
    const/high16 v0, 0x1

    invoke-virtual {v4, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2525
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_87

    .line 2526
    :goto_6c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_87

    .line 2527
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2528
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.android.contacts.activities.AttachPhotoActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2529
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2534
    :cond_87
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v0, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2535
    new-instance v0, Lcom/cooliris/media/HudLayer$49;

    invoke-direct {v0, p0, v5, v2}, Lcom/cooliris/media/HudLayer$49;-><init>(Lcom/cooliris/media/HudLayer;Ljava/util/List;Landroid/content/Intent;)V

    .line 2548
    new-instance v1, Lcom/cooliris/media/HudLayer$ResolverAdapter;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v5}, Lcom/cooliris/media/HudLayer$ResolverAdapter;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;Ljava/util/List;)V

    .line 2550
    const v2, 0x7f060013

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2551
    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2553
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/HudLayer$50;

    invoke-direct {v1, p0, v3}, Lcom/cooliris/media/HudLayer$50;-><init>(Lcom/cooliris/media/HudLayer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 2526
    :cond_b6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6c
.end method

.method private isFullImageLoading()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 628
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v1

    if-nez v1, :cond_48

    .line 629
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getRepresentativeDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getRepresentativeDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v1, v1, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_49

    .line 631
    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_47

    .line 632
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 635
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iput-boolean v0, v1, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 642
    :cond_47
    :goto_47
    const/4 v0, 0x1

    .line 644
    :cond_48
    return v0

    .line 638
    :cond_49
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_47
.end method

.method private selectedCheck()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 619
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 624
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public static sendMmsIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3075
    const-string v0, "Niranjana"

    const-string v1, "in sendMmsIntent function"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.QUICKSND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3077
    sget-object v1, Lcom/cooliris/media/HudLayer;->MMS_TO:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3079
    invoke-virtual {p3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v1

    if-nez v1, :cond_27

    .line 3080
    const-string v1, "mms_image_uri"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3084
    :cond_22
    :goto_22
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3085
    const/4 v0, 0x0

    return v0

    .line 3081
    :cond_27
    invoke-virtual {p3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 3082
    const-string v1, "mms_video_uri"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_22
.end method

.method private setRenameFile()V
    .registers 3

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/HudLayer$52;

    invoke-direct {v1, p0}, Lcom/cooliris/media/HudLayer$52;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2903
    return-void
.end method

.method private setResultForMultiPickNormal()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0x12c

    const/4 v3, 0x0

    .line 2971
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v7

    .line 2972
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2974
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 2975
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v3

    .line 2976
    :goto_1a
    if-ge v6, v9, :cond_85

    .line 2977
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2978
    const/4 v1, 0x0

    .line 2980
    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_46

    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 2981
    iget-object v1, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2982
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    move-object v4, v1

    :goto_37
    move v5, v3

    .line 2990
    :goto_38
    if-ge v5, v2, :cond_7a

    .line 2991
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2992
    if-nez v0, :cond_61

    .line 2990
    :cond_42
    :goto_42
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_38

    .line 2983
    :cond_46
    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v2, :cond_fd

    .line 2984
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-nez v2, :cond_fd

    .line 2986
    iget-object v1, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2987
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v0

    move v2, v0

    move-object v4, v1

    goto :goto_37

    .line 2996
    :cond_61
    iget-object v1, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 2997
    iget-object v1, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2998
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v11, v0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v1, v11, v12}, Lcom/cooliris/media/Gallery;->setFolderID(J)V

    .line 2999
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 2976
    :cond_7a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1a

    .line 3004
    :cond_7e
    sget-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v1, "Selection is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_85
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v13, :cond_bb

    .line 3008
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3009
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3010
    const-string v2, "folderID"

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getFolderID()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3011
    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3012
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/Gallery;->setResult(ILandroid/content/Intent;)V

    .line 3013
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 3023
    :goto_ba
    return-void

    .line 3014
    :cond_bb
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_e6

    .line 3015
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060099

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_ba

    .line 3019
    :cond_e6
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_ba

    :cond_fd
    move v2, v3

    move-object v4, v1

    goto/16 :goto_37
.end method

.method private setShareDialogMenu(Landroid/content/Intent;Lcom/cooliris/media/HudLayer$ShareType;ZZZ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2115
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2116
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 2117
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2118
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2120
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2122
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    invoke-virtual {p2}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_138

    .line 2132
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2136
    :goto_3b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2137
    :goto_41
    if-eq v1, v4, :cond_f1

    .line 2138
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2139
    sget-object v7, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    invoke-virtual {p2}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_142

    .line 2181
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2137
    :cond_57
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    .line 2125
    :pswitch_5b
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3b

    .line 2128
    :pswitch_6c
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3b

    .line 2141
    :pswitch_7d
    if-eqz p3, :cond_89

    .line 2142
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2143
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2146
    :cond_89
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2147
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2152
    :pswitch_93
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2153
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2157
    :pswitch_9d
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsMultiSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2158
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2162
    :pswitch_a7
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 2163
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 2164
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2166
    :cond_bd
    if-eqz p3, :cond_d1

    if-eqz p5, :cond_d1

    .line 2167
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsImageExceptShareViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 2168
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 2170
    :cond_d1
    if-eqz p4, :cond_e6

    if-eqz p5, :cond_e6

    .line 2171
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 2172
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 2175
    :cond_e6
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->IsMultiSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 2176
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 2186
    :cond_f1
    sget-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    if-eq p2, v0, :cond_f9

    sget-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    if-ne p2, v0, :cond_116

    :cond_f9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 2188
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06009d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2212
    :goto_115
    return-void

    .line 2194
    :cond_116
    new-instance v0, Lcom/cooliris/media/HudLayer$45;

    invoke-direct {v0, p0, v6, p1}, Lcom/cooliris/media/HudLayer$45;-><init>(Lcom/cooliris/media/HudLayer;Ljava/util/List;Landroid/content/Intent;)V

    .line 2204
    new-instance v1, Lcom/cooliris/media/HudLayer$ResolverAdapter;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v6}, Lcom/cooliris/media/HudLayer$ResolverAdapter;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;Ljava/util/List;)V

    .line 2205
    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2207
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/HudLayer$46;

    invoke-direct {v1, p0, v5}, Lcom/cooliris/media/HudLayer$46;-><init>(Lcom/cooliris/media/HudLayer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_115

    .line 2122
    :pswitch_data_138
    .packed-switch 0x4
        :pswitch_5b
        :pswitch_5b
        :pswitch_6c
    .end packed-switch

    .line 2139
    :pswitch_data_142
    .packed-switch 0x4
        :pswitch_7d
        :pswitch_9d
        :pswitch_93
        :pswitch_a7
    .end packed-switch
.end method

.method private showDrmShareNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2453
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2456
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    aget-object v0, v0, v3

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 2457
    return-void
.end method

.method private startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 2215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2216
    .local v1, resolvedIntent:Landroid/content/Intent;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2217
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2218
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$47;

    invoke-direct {v3, p0, v1}, Lcom/cooliris/media/HudLayer$47;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2223
    return-void
.end method

.method private updateSetAsMenu()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 2562
    .line 2564
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2565
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v1

    .line 2566
    if-nez v1, :cond_10

    .line 2616
    :goto_f
    return-void

    .line 2570
    :cond_10
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2571
    sget-object v0, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v1, "updateSetAsMenu() : Image is not loaded completely."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    aget-object v0, v0, v11

    iput-object v3, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto :goto_f

    .line 2576
    :cond_28
    invoke-direct {p0, v0}, Lcom/cooliris/media/HudLayer;->checkSetAsDisabled(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2577
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06007a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2580
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    aget-object v0, v0, v11

    iput-object v3, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto :goto_f

    .line 2584
    :cond_4f
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2585
    iget-object v0, v1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cooliris/media/Util;->createSetAsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2586
    const/high16 v0, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2588
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_89

    move v1, v2

    .line 2589
    :goto_6e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_89

    .line 2590
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2591
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v7, "com.android.contacts.activities.AttachPhotoActivity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2592
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2597
    :cond_89
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v0, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2599
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2600
    if-nez v7, :cond_a8

    move-object v0, v3

    .line 2615
    :goto_98
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v1

    aget-object v1, v1, v11

    iput-object v0, v1, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_f

    .line 2589
    :cond_a4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6e

    .line 2603
    :cond_a8
    new-array v1, v7, [Lcom/cooliris/media/PopupMenu$Option;

    .line 2604
    :goto_aa
    if-eq v2, v7, :cond_cd

    .line 2605
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2606
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2607
    new-instance v8, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v10, Lcom/cooliris/media/HudLayer$51;

    invoke-direct {v10, p0, v5, v0}, Lcom/cooliris/media/HudLayer$51;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-direct {v8, v3, v9, v10}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v8, v1, v2

    .line 2604
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    :cond_cd
    move-object v0, v1

    goto :goto_98
.end method

.method private updateShareMenu(ZLcom/cooliris/media/HudLayer$ShareType;)V
    .registers 27
    .parameter
    .parameter

    .prologue
    .line 1616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v15

    .line 1617
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    const/4 v4, 0x0

    .line 1620
    const/4 v13, 0x0

    .line 1625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_24
    if-eqz p1, :cond_86

    .line 1627
    :cond_26
    sget-object v4, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full image Load ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Drm Checked ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 1630
    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_78

    .line 1631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 1632
    :cond_78
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 2021
    :goto_85
    return-void

    .line 1636
    :cond_86
    const/4 v9, 0x1

    .line 1637
    const/4 v7, 0x0

    .line 1638
    const/4 v8, 0x0

    .line 1640
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d6

    .line 1641
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1642
    const/4 v5, 0x0

    move v14, v5

    move v11, v9

    move-object v12, v4

    :goto_97
    move/from16 v0, v17

    if-ge v14, v0, :cond_18b

    .line 1643
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaBucket;

    .line 1644
    const/4 v6, 0x0

    .line 1645
    const/4 v5, 0x0

    .line 1646
    iget-object v9, v4, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v9, :cond_d5

    iget-object v9, v4, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d5

    .line 1647
    iget-object v5, v4, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 1648
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v9, v4

    move-object v10, v5

    .line 1654
    :goto_b7
    const/4 v4, 0x0

    move v6, v8

    move v5, v7

    move v7, v11

    move-object v8, v12

    move v11, v4

    :goto_bd
    if-ge v11, v9, :cond_182

    .line 1655
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaItem;

    .line 1656
    if-nez v4, :cond_e8

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    .line 1654
    :cond_cc
    :goto_cc
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    goto :goto_bd

    .line 1649
    :cond_d5
    iget-object v9, v4, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v9, :cond_675

    .line 1651
    iget-object v5, v4, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1652
    iget-object v4, v4, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    move v9, v4

    move-object v10, v5

    goto :goto_b7

    .line 1660
    :cond_e8
    iget-object v12, v4, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 1661
    if-eqz v12, :cond_f8

    iget-wide v0, v12, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v12, v18, v20

    if-eqz v12, :cond_f8

    .line 1662
    const-string v8, "text/plain"

    .line 1665
    :cond_f8
    if-nez v8, :cond_13a

    .line 1666
    iget-object v8, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-nez v8, :cond_109

    .line 1667
    const-string v8, "application/octet-stream"

    iput-object v8, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 1668
    sget-object v8, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v12, "Item Mime Type is Null! defualt mime type setting!"

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_109
    iget-object v8, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 1673
    iget-object v12, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_118

    .line 1674
    const/4 v5, 0x1

    .line 1676
    :cond_118
    iget-object v12, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v18, "video"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_679

    .line 1677
    const/4 v6, 0x1

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    .line 1698
    :goto_12a
    iget-object v12, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v12, :cond_cc

    .line 1699
    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1700
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 1680
    :cond_13a
    if-eqz v7, :cond_679

    const-string v12, "text"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_679

    .line 1681
    iget-object v7, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-nez v7, :cond_153

    .line 1682
    const-string v7, "application/octet-stream"

    iput-object v7, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 1683
    sget-object v7, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v12, "Item Mime Type is Null! defualt mime type setting!"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_153
    if-eqz v5, :cond_166

    iget-object v7, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v12, "image"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 1688
    const/4 v7, 0x1

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto :goto_12a

    .line 1689
    :cond_166
    if-eqz v6, :cond_179

    iget-object v7, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v12, "video"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_179

    .line 1690
    const/4 v7, 0x1

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto :goto_12a

    .line 1692
    :cond_179
    const-string v8, "application/octet-stream"

    .line 1693
    const/4 v7, 0x0

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto :goto_12a

    .line 1642
    :cond_182
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v7

    move-object v12, v8

    move v8, v6

    move v7, v5

    goto/16 :goto_97

    :cond_18b
    move v9, v11

    move-object v4, v12

    .line 1708
    :goto_18d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_5d4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x12c

    if-gt v5, v6, :cond_5d4

    .line 1709
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1710
    if-nez v4, :cond_672

    .line 1711
    const-string v4, "application/octet-stream"

    move-object v6, v4

    .line 1712
    :goto_1a5
    const-string v4, "text"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 1714
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1719
    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_1bf
    if-ge v4, v11, :cond_1de

    .line 1720
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1721
    add-int/lit8 v12, v11, -0x1

    if-eq v4, v12, :cond_1d3

    .line 1722
    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1719
    :cond_1d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1bf

    .line 1705
    :cond_1d6
    sget-object v5, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    const-string v6, "Selection is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    .line 1725
    :cond_1de
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    :goto_1e7
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1738
    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_203

    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_203

    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->MULTI_SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_203

    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_259

    :cond_203
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    .line 1742
    invoke-direct/range {v4 .. v9}, Lcom/cooliris/media/HudLayer;->setShareDialogMenu(Landroid/content/Intent;Lcom/cooliris/media/HudLayer$ShareType;ZZZ)V

    move-object v10, v13

    :cond_20b
    :goto_20b
    move-object v13, v10

    .line 2014
    :goto_20c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 2015
    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_65a

    .line 2016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_85

    .line 1727
    :cond_22e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_24c

    .line 1728
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    const-string v10, "android.intent.extra.STREAM"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1734
    :goto_248
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e7

    .line 1731
    :cond_24c
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_248

    .line 1746
    :cond_259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1747
    const/4 v4, 0x0

    invoke-virtual {v14, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 1748
    sget-boolean v4, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v4, :cond_2c5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2c5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c5

    .line 1750
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v10, v4

    :goto_282
    if-eqz v10, :cond_2c5

    .line 1751
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1752
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "com.broadcom.bt.app.opp.OppLauncherActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c1

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "com.sec.android.app.FileTransferClient.FTCDeviceListActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c1

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "com.google.android.apps.uploader.clients.picasa.PicasaSettingsActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v11, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c1

    .line 1756
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1750
    :cond_2c1
    add-int/lit8 v4, v10, -0x1

    move v10, v4

    goto :goto_282

    .line 1760
    :cond_2c5
    new-instance v4, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v4, v14}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1761
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .line 1763
    const/4 v11, 0x0

    .line 1764
    const/4 v4, 0x0

    move v12, v4

    :goto_2d6
    move/from16 v0, v18

    if-eq v12, v0, :cond_368

    .line 1765
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1766
    sget-object v10, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v19

    aget v10, v10, v19

    packed-switch v10, :pswitch_data_680

    :cond_2ed
    move v4, v11

    .line 1764
    :goto_2ee
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move v11, v4

    goto :goto_2d6

    .line 1768
    :pswitch_2f3
    add-int/lit8 v4, v11, 0x1

    .line 1769
    goto :goto_2ee

    .line 1772
    :pswitch_2f6
    const-string v10, "text"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_316

    .line 1773
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    .line 1774
    add-int/lit8 v11, v11, 0x1

    move v10, v11

    .line 1791
    :goto_309
    if-eqz v7, :cond_352

    .line 1792
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_66c

    .line 1793
    add-int/lit8 v4, v10, 0x1

    goto :goto_2ee

    .line 1776
    :cond_316
    if-eqz v7, :cond_32e

    if-eqz v9, :cond_32e

    .line 1777
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageExceptShareViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    .line 1778
    add-int/lit8 v11, v11, 0x1

    move v10, v11

    goto :goto_309

    .line 1780
    :cond_32e
    if-eqz v8, :cond_346

    if-eqz v9, :cond_346

    .line 1781
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    .line 1782
    add-int/lit8 v11, v11, 0x1

    move v10, v11

    goto :goto_309

    .line 1785
    :cond_346
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsMultiSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_66f

    .line 1786
    add-int/lit8 v11, v11, 0x1

    move v10, v11

    goto :goto_309

    .line 1796
    :cond_352
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_66c

    .line 1797
    add-int/lit8 v4, v10, 0x1

    goto :goto_2ee

    .line 1802
    :pswitch_35d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 1803
    add-int/lit8 v4, v11, 0x1

    goto :goto_2ee

    .line 1813
    :cond_368
    if-nez v11, :cond_388

    .line 1814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    move-object v10, v13

    goto/16 :goto_20b

    .line 1819
    :cond_388
    const/4 v4, 0x0

    .line 1823
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUse_Tn_Us_TMO:Z

    if-eqz v10, :cond_3b1

    .line 1824
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3b1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v10}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v10, :cond_3b1

    const-string v10, "text"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3b1

    sget-object v10, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_3b1

    .line 1827
    const/4 v4, 0x2

    .line 1831
    :cond_3b1
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUse_U1_Us_USCC:Z

    if-eqz v10, :cond_3d4

    .line 1833
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3d4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v10}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v10, :cond_3d4

    const-string v10, "text"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3d4

    .line 1836
    add-int/lit8 v4, v4, 0x1

    .line 1841
    :cond_3d4
    add-int/2addr v4, v11

    new-array v10, v4, [Lcom/cooliris/media/PopupMenu$Option;

    .line 1846
    const/4 v12, 0x0

    .line 1847
    const/4 v4, 0x0

    move v13, v4

    :goto_3da
    move/from16 v0, v18

    if-eq v13, v0, :cond_57a

    .line 1848
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1849
    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1850
    sget-object v20, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_68a

    .line 1971
    :cond_3f9
    :goto_3f9
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41e

    .line 1972
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v19, "com.newbay.pixota.Pixota"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41e

    .line 1974
    const/4 v4, 0x0

    aget-object v4, v10, v4

    .line 1975
    const/16 v19, 0x0

    aget-object v20, v10, v13

    aput-object v20, v10, v19

    .line 1976
    aput-object v4, v10, v13

    .line 1847
    :cond_41e
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_3da

    .line 1852
    :pswitch_422
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$37;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$37;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1860
    add-int/lit8 v12, v12, 0x1

    .line 1861
    goto :goto_3f9

    .line 1864
    :pswitch_441
    const-string v20, "text"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_49b

    .line 1865
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    .line 1866
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$38;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$38;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1875
    add-int/lit8 v12, v12, 0x1

    .line 1920
    :cond_471
    :goto_471
    if-eqz v7, :cond_52a

    .line 1921
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-eqz v20, :cond_3f9

    .line 1922
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$42;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$42;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1934
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3f9

    .line 1877
    :cond_49b
    if-eqz v7, :cond_4ce

    if-eqz v9, :cond_4ce

    .line 1878
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsImageExceptShareViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    .line 1880
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$39;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$39;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1889
    add-int/lit8 v12, v12, 0x1

    goto :goto_471

    .line 1891
    :cond_4ce
    if-eqz v8, :cond_502

    if-eqz v9, :cond_502

    .line 1892
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    .line 1893
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$40;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$40;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1902
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_471

    .line 1905
    :cond_502
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsMultiSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-nez v20, :cond_471

    .line 1906
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$41;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$41;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1915
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_471

    .line 1937
    :cond_52a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoSendViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-eqz v20, :cond_3f9

    .line 1938
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$43;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$43;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1950
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3f9

    .line 1955
    :pswitch_552
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cooliris/media/HudLayer;->IsVideoPalyViaType(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-eqz v20, :cond_3f9

    .line 1956
    new-instance v20, Lcom/cooliris/media/PopupMenu$Option;

    invoke-virtual {v4, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    new-instance v22, Lcom/cooliris/media/HudLayer$44;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/cooliris/media/HudLayer$44;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v20, v10, v12

    .line 1965
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3f9

    .line 1983
    :cond_57a
    sget-boolean v4, Lcom/cooliris/media/Utils;->mUse_Tn_Us_TMO:Z

    if-eqz v4, :cond_669

    sget-object v4, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_669

    .line 1984
    sget-object v4, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before addOnlineAlbum() : mmsnumActivities = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v15, v1, v10}, Lcom/cooliris/media/HudLayer;->addOnlineAlbums(ILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/cooliris/media/PopupMenu$Option;)V

    .line 1987
    add-int/lit8 v11, v11, 0x2

    move v7, v11

    .line 1993
    :goto_5a6
    sget-boolean v4, Lcom/cooliris/media/Utils;->mUse_U1_Us_USCC:Z

    if-eqz v4, :cond_20b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20b

    .line 1994
    sget-object v4, Lcom/cooliris/media/HudLayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before addOnlineAlbum() : mmsnumActivities = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    move-object v8, v15

    move-object/from16 v9, v16

    move-object v11, v5

    .line 1996
    invoke-direct/range {v6 .. v11}, Lcom/cooliris/media/HudLayer;->addOnlineAlbumsForUSCC(ILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/cooliris/media/PopupMenu$Option;Landroid/content/Intent;)V

    goto/16 :goto_20b

    .line 2000
    :cond_5d4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_60b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x12c

    if-le v4, v5, :cond_60b

    .line 2001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060099

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x12c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_20c

    .line 2004
    :cond_60b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_63d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v4

    if-eqz v4, :cond_63d

    .line 2006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_20c

    .line 2009
    :cond_63d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_20c

    .line 2018
    :cond_65a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v4}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v13, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto/16 :goto_85

    :cond_669
    move v7, v11

    goto/16 :goto_5a6

    :cond_66c
    move v4, v10

    goto/16 :goto_2ee

    :cond_66f
    move v10, v11

    goto/16 :goto_309

    :cond_672
    move-object v6, v4

    goto/16 :goto_1a5

    :cond_675
    move v9, v5

    move-object v10, v6

    goto/16 :goto_b7

    :cond_679
    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_12a

    .line 1766
    :pswitch_data_680
    .packed-switch 0x1
        :pswitch_2f3
        :pswitch_2f6
        :pswitch_35d
    .end packed-switch

    .line 1850
    :pswitch_data_68a
    .packed-switch 0x1
        :pswitch_422
        :pswitch_441
        :pswitch_552
    .end packed-switch
.end method

.method private updateViews()V
    .registers 18

    .prologue
    .line 1304
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-nez v11, :cond_7

    .line 1425
    :goto_6
    return-void

    .line 1306
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v8

    .line 1308
    .local v8, state:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/HudLayer;->mMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17c

    const/4 v6, 0x1

    .line 1309
    .local v6, selectionMode:Z
    :goto_17
    const/4 v11, 0x2

    if-ne v8, v11, :cond_17f

    const/4 v2, 0x1

    .line 1310
    .local v2, fullscreenMode:Z
    :goto_1b
    if-eqz v8, :cond_20

    const/4 v11, 0x3

    if-ne v8, v11, :cond_182

    :cond_20
    const/4 v7, 0x1

    .line 1312
    .local v7, stackMode:Z
    :goto_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    if-eqz v6, :cond_29

    if-eqz v2, :cond_185

    :cond_29
    const/4 v11, 0x1

    :goto_2a
    invoke-virtual {v12, v11}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    if-nez v6, :cond_188

    const/4 v11, 0x1

    :goto_34
    invoke-virtual {v12, v11}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v10

    .line 1316
    .local v10, viewSingleIntent:Z
    if-eqz v10, :cond_55

    .line 1317
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_18b

    .line 1318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    .line 1330
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    if-eqz v2, :cond_5f

    if-nez v6, :cond_5f

    if-eqz v10, :cond_1ea

    :cond_5f
    const/4 v11, 0x1

    :goto_60
    invoke-virtual {v12, v11}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    iget-object v11, v11, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v12, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v11, v12, :cond_7b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v11

    if-eqz v11, :cond_7d

    :cond_7b
    if-nez v10, :cond_d1

    .line 1333
    :cond_7d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v11}, Lcom/cooliris/media/MenuBar;->isHidden()Z

    move-result v11

    if-nez v11, :cond_91

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    if-eqz v11, :cond_1ed

    :cond_91
    const/4 v11, 0x1

    :goto_92
    invoke-virtual {v12, v11}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v11}, Lcom/cooliris/media/MenuBar;->isHidden()Z

    move-result v11

    if-nez v11, :cond_a9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    if-eqz v11, :cond_1f0

    :cond_a9
    const/4 v11, 0x1

    :goto_aa
    invoke-virtual {v12, v11}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 1336
    sget-boolean v11, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v11, :cond_1f6

    .line 1337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v11}, Lcom/cooliris/media/MenuBar;->isHidden()Z

    move-result v11

    if-nez v11, :cond_cd

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    if-eqz v11, :cond_1f3

    :cond_cd
    const/4 v11, 0x1

    :goto_ce
    invoke-virtual {v12, v11}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 1344
    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    if-nez v2, :cond_db

    if-nez v6, :cond_db

    if-eqz v7, :cond_200

    :cond_db
    const/4 v11, 0x1

    :goto_dc
    invoke-virtual {v12, v11}, Lcom/cooliris/media/TimeBar;->setHidden(Z)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    if-nez v6, :cond_fc

    if-nez v10, :cond_fc

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v11

    if-eqz v11, :cond_203

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_203

    :cond_fc
    const/4 v11, 0x1

    :goto_fd
    invoke-virtual {v12, v11}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    if-nez v6, :cond_112

    if-nez v2, :cond_112

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getPickIntent()Z

    move-result v11

    if-eqz v11, :cond_206

    :cond_112
    const/4 v11, 0x1

    :goto_113
    invoke-virtual {v12, v11}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/HudLayer;->computeSizeForPathbar()V

    .line 1354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    iget-object v11, v11, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v12, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-eq v11, v12, :cond_209

    .line 1355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/TimeBar;->setHidden(Z)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 1373
    :cond_13d
    :goto_13d
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    if-eqz v11, :cond_148

    .line 1374
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/cooliris/media/HudLayer;->mSetAs:Z

    .line 1378
    :cond_148
    const/4 v4, 0x0

    .line 1379
    .local v4, image:I
    const/4 v5, 0x0

    .line 1380
    .local v5, pressedImage:I
    const/4 v1, 0x0

    .line 1381
    .local v1, action:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    .line 1382
    .local v9, topRightButton:Lcom/cooliris/media/ImageButton;
    const/high16 v11, 0x42bc

    sget v12, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    float-to-int v3, v11

    .line 1383
    .local v3, height:I
    packed-switch v8, :pswitch_data_29c

    .line 1421
    :goto_158
    :pswitch_158
    const/high16 v11, 0x42c8

    sget v12, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    int-to-float v12, v3

    invoke-virtual {v9, v11, v12}, Lcom/cooliris/media/ImageButton;->setSize(FF)V

    .line 1422
    invoke-virtual {v9, v4, v5}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    .line 1423
    invoke-virtual {v9, v1}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getMotionInfoRunnable()Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 1308
    .end local v1           #action:Ljava/lang/Runnable;
    .end local v2           #fullscreenMode:Z
    .end local v3           #height:I
    .end local v4           #image:I
    .end local v5           #pressedImage:I
    .end local v6           #selectionMode:Z
    .end local v7           #stackMode:Z
    .end local v9           #topRightButton:Lcom/cooliris/media/ImageButton;
    .end local v10           #viewSingleIntent:Z
    :cond_17c
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 1309
    .restart local v6       #selectionMode:Z
    :cond_17f
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 1310
    .restart local v2       #fullscreenMode:Z
    :cond_182
    const/4 v7, 0x0

    goto/16 :goto_21

    .line 1312
    .restart local v7       #stackMode:Z
    :cond_185
    const/4 v11, 0x0

    goto/16 :goto_2a

    .line 1313
    :cond_188
    const/4 v11, 0x0

    goto/16 :goto_34

    .line 1320
    .restart local v10       #viewSingleIntent:Z
    :cond_18b
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x7d0

    sub-long/2addr v13, v15

    cmp-long v11, v11, v13

    if-gez v11, :cond_1dc

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1dc

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v11

    if-eqz v11, :cond_1dc

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v11

    if-eqz v11, :cond_1dc

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->isFeedRunning()Z

    move-result v11

    if-nez v11, :cond_1dc

    .line 1324
    if-eqz v10, :cond_1da

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v11

    if-eqz v11, :cond_1da

    const/4 v10, 0x1

    :goto_1d8
    goto/16 :goto_55

    :cond_1da
    const/4 v10, 0x0

    goto :goto_1d8

    .line 1325
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_55

    .line 1326
    const/4 v10, 0x0

    goto/16 :goto_55

    .line 1330
    :cond_1ea
    const/4 v11, 0x0

    goto/16 :goto_60

    .line 1333
    :cond_1ed
    const/4 v11, 0x0

    goto/16 :goto_92

    .line 1334
    :cond_1f0
    const/4 v11, 0x0

    goto/16 :goto_aa

    .line 1337
    :cond_1f3
    const/4 v11, 0x0

    goto/16 :goto_ce

    .line 1339
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    goto/16 :goto_d1

    .line 1344
    :cond_200
    const/4 v11, 0x0

    goto/16 :goto_dc

    .line 1349
    :cond_203
    const/4 v11, 0x0

    goto/16 :goto_fd

    .line 1351
    :cond_206
    const/4 v11, 0x0

    goto/16 :goto_113

    .line 1358
    :cond_209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 1359
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/HudLayer;->mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v11, v12}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v11

    if-nez v11, :cond_236

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 1362
    :cond_236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    if-nez v11, :cond_24a

    .line 1363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    goto/16 :goto_13d

    .line 1364
    :cond_24a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13d

    .line 1366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    goto/16 :goto_13d

    .line 1385
    .restart local v1       #action:Ljava/lang/Runnable;
    .restart local v3       #height:I
    .restart local v4       #image:I
    .restart local v5       #pressedImage:I
    .restart local v9       #topRightButton:Lcom/cooliris/media/ImageButton;
    :pswitch_267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getChkFromCamera()Z

    move-result v11

    if-eqz v11, :cond_279

    .line 1386
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    goto/16 :goto_158

    .line 1388
    :cond_279
    div-int/lit8 v3, v3, 0x2

    .line 1389
    sget v4, Lcom/cooliris/media/HudLayer;->CAMERA_BUTTON_ICON:I

    .line 1390
    sget v5, Lcom/cooliris/media/HudLayer;->CAMERA_BUTTON_ICON_PRESSED:I

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/HudLayer;->mCameraButtonAction:Ljava/lang/Runnable;

    .line 1393
    goto/16 :goto_158

    .line 1395
    :pswitch_285
    div-int/lit8 v3, v3, 0x2

    .line 1396
    sget v4, Lcom/cooliris/media/HudLayer;->STACK_MODE_ICON:I

    .line 1397
    sget v5, Lcom/cooliris/media/HudLayer;->STACK_MODE_PRESSED_ICON:I

    .line 1398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/HudLayer;->mStackModeButtonAction:Ljava/lang/Runnable;

    .line 1399
    goto/16 :goto_158

    .line 1401
    :pswitch_291
    sget v4, Lcom/cooliris/media/HudLayer;->GRID_MODE_ICON:I

    .line 1402
    sget v5, Lcom/cooliris/media/HudLayer;->GRID_MODE_PRESSED_ICON:I

    .line 1403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/HudLayer;->mGridModeButtonAction:Ljava/lang/Runnable;

    .line 1404
    goto/16 :goto_158

    .line 1383
    nop

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_267
        :pswitch_285
        :pswitch_158
        :pswitch_291
    .end packed-switch
.end method


# virtual methods
.method public autoHide(Z)V
    .registers 2
    .parameter "hide"

    .prologue
    .line 2226
    iput-boolean p1, p0, Lcom/cooliris/media/HudLayer;->mAutoHide:Z

    .line 2227
    return-void
.end method

.method public cancelSelection()V
    .registers 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 1546
    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->closeSelectionMenu()V

    .line 1547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 1548
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 2239
    return-void
.end method

.method public closeFullscreenMenu()V
    .registers 2

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 1556
    return-void
.end method

.method public closeSelectionMenu()V
    .registers 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 1552
    return-void
.end method

.method public computeBottomMenu()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    .line 2263
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v3

    .line 2266
    .local v3, selection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    :try_start_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2267
    .local v2, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_3b

    .line 2268
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2269
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v4, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v4, v4, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_38

    .line 2270
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    if-ne v4, v8, :cond_2e

    .line 2271
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 2296
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #i:I
    .end local v2           #numBuckets:I
    :goto_2d
    return-void

    .line 2273
    .restart local v0       #bucket:Lcom/cooliris/media/MediaBucket;
    .restart local v1       #i:I
    .restart local v2       #numBuckets:I
    :cond_2e
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_2d

    .line 2294
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #i:I
    .end local v2           #numBuckets:I
    :catch_36
    move-exception v4

    goto :goto_2d

    .line 2267
    .restart local v0       #bucket:Lcom/cooliris/media/MediaBucket;
    .restart local v1       #i:I
    .restart local v2       #numBuckets:I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2278
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    :cond_3b
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2279
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_2d

    .line 2281
    :cond_4b
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    if-ne v4, v8, :cond_86

    .line 2282
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    if-ne v4, v8, :cond_7e

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getCurrentSelectedDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v4

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getCurrentSelectedDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v4

    iget-object v4, v4, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7e

    .line 2286
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuVideo:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_2d

    .line 2288
    :cond_7e
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mSingleViewIntentBottomMenuImage:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_2d

    .line 2291
    :cond_86
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v5, p0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V
    :try_end_8d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_8d} :catch_36

    goto :goto_2d
.end method

.method public containsPoint(FF)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method protected deleteSelection()V
    .registers 4

    .prologue
    .line 1230
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_Tn_Us_Common:Z

    if-eqz v0, :cond_2b

    .line 1231
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 1232
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>PICTURE_DELETED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_2b
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deleteSelection()V

    .line 1238
    return-void
.end method

.method public dialogClose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2907
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 2908
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2909
    iput-object v1, p0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    .line 2912
    :cond_c
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mShareDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_17

    .line 2913
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mShareDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2914
    iput-object v1, p0, Lcom/cooliris/media/HudLayer;->mShareDialog:Landroid/content/DialogInterface;

    .line 2925
    :cond_17
    return-void
.end method

.method public enterSelectionMode()V
    .registers 3

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->feedAboutToChange()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2259
    :goto_8
    return-void

    .line 2244
    :cond_9
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 2245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 2250
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2251
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mMultiPickIntentBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_8

    .line 2253
    :cond_22
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->noDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2254
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_8

    .line 2257
    :cond_32
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mNormalBottomMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto :goto_8
.end method

.method public fullScreenMenuViewSet()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2313
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    if-ne v1, v11, :cond_c8

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getCurrentSelectedDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 2315
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mFullScreenShareSendMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v1, v4}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    .line 2320
    :goto_1f
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v0

    .line 2321
    .local v0, viewSingleIntent:Z
    if-eqz v0, :cond_37

    .line 2322
    iget-wide v4, p0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_d1

    .line 2323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    .line 2337
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    if-ne v1, v11, :cond_ae

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v1

    if-eq v1, v2, :cond_ae

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 2339
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_128

    move v1, v2

    :goto_5c
    invoke-virtual {v4, v1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2340
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_12b

    move v1, v2

    :goto_6a
    invoke-virtual {v4, v1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2341
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_79

    if-eqz v0, :cond_12e

    :cond_79
    move v1, v2

    :goto_7a
    invoke-virtual {v4, v1}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 2342
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_89

    if-eqz v0, :cond_131

    :cond_89
    move v1, v2

    :goto_8a
    invoke-virtual {v4, v1}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 2343
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    iget-object v1, v1, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v4, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v1, v4, :cond_134

    .line 2344
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2348
    :goto_9c
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v1, :cond_146

    .line 2349
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v10

    if-nez v4, :cond_ab

    move v3, v2

    :cond_ab
    invoke-virtual {v1, v3}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2355
    :cond_ae
    :goto_ae
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    iget-object v1, v1, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v3, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-eq v1, v3, :cond_c7

    .line 2356
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/TimeBar;->setHidden(Z)V

    .line 2357
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 2358
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/MenuBar;->setHidden(Z)V

    .line 2360
    :cond_c7
    return-void

    .line 2317
    .end local v0           #viewSingleIntent:Z
    :cond_c8
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mFullScreenShareAllMenu:[Lcom/cooliris/media/MenuBar$Menu;

    invoke-virtual {v1, v4}, Lcom/cooliris/media/MenuBar;->setMenus([Lcom/cooliris/media/MenuBar$Menu;)V

    goto/16 :goto_1f

    .line 2325
    .restart local v0       #viewSingleIntent:Z
    :cond_d1
    iget-wide v4, p0, Lcom/cooliris/media/HudLayer;->viewStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    sub-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_119

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    if-ne v1, v11, :cond_119

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v1

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v1

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->isFeedRunning()Z

    move-result v1

    if-nez v1, :cond_119

    .line 2329
    if-eqz v0, :cond_117

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v1

    if-eqz v1, :cond_117

    move v0, v2

    :goto_115
    goto/16 :goto_37

    :cond_117
    move v0, v3

    goto :goto_115

    .line 2330
    :cond_119
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    if-eq v1, v11, :cond_37

    .line 2332
    const/4 v0, 0x0

    goto/16 :goto_37

    :cond_128
    move v1, v3

    .line 2339
    goto/16 :goto_5c

    :cond_12b
    move v1, v3

    .line 2340
    goto/16 :goto_6a

    :cond_12e
    move v1, v3

    .line 2341
    goto/16 :goto_7a

    :cond_131
    move v1, v3

    .line 2342
    goto/16 :goto_8a

    .line 2346
    :cond_134
    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_144

    move v1, v2

    :goto_13f
    invoke-virtual {v4, v1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    goto/16 :goto_9c

    :cond_144
    move v1, v3

    goto :goto_13f

    .line 2351
    :cond_146
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    goto/16 :goto_ae
.end method

.method public fullscreenSelectionChanged(Lcom/cooliris/media/MediaItem;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1593
    if-nez p1, :cond_3

    .line 1610
    :cond_2
    :goto_2
    return-void

    .line 1595
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1596
    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    iput-object v1, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    .line 1597
    iput-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedPosition:Ljava/lang/String;

    .line 1598
    iput-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    .line 1599
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 1601
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1602
    const-string v0, "HudLayer"

    const-string v1, "View intent.. check DRM info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    invoke-virtual {p1}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    .line 1605
    :cond_39
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_Tn_Us_Common:Z

    if-eqz v0, :cond_2

    .line 1606
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1607
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>PICTURE_OPENED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 1519
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/ImageButton;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1524
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_22

    .line 1525
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/ImageButton;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1527
    :cond_22
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/ImageButton;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1528
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/ImageButton;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1529
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/TimeBar;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1530
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/MenuBar;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1531
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/MenuBar;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1532
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/MenuBar;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1533
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/PathBarLayer;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1534
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/ImageButton;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 1536
    iput-object p1, p0, Lcom/cooliris/media/HudLayer;->mView:Lcom/cooliris/media/RenderView;

    .line 1537
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 1510
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    return v0
.end method

.method public getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .registers 6
    .parameter "mContext"

    .prologue
    .line 2934
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 2936
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 2937
    const/4 v1, 0x1

    new-instance v2, Lcom/cooliris/media/HudLayer$53;

    invoke-direct {v2, p0, p1}, Lcom/cooliris/media/HudLayer$53;-><init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 2967
    return-object v0
.end method

.method public getGridLayer()Lcom/cooliris/media/GridLayer;
    .registers 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method public getMenuBar()Lcom/cooliris/media/Layer;
    .registers 2

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1247
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mMode:I

    return v0
.end method

.method public getPathBar()Lcom/cooliris/media/PathBarLayer;
    .registers 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    return-object v0
.end method

.method public getRotateButton()Lcom/cooliris/media/ImageButton;
    .registers 2

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    return-object v0
.end method

.method public getTimeBar()Lcom/cooliris/media/TimeBar;
    .registers 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    return-object v0
.end method

.method public hidePathBar()V
    .registers 3

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 3521
    return-void
.end method

.method public hideZoomButtons(Z)V
    .registers 3
    .parameter "hide"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2304
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2305
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2306
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_18

    .line 2307
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/ImageButton;->setHidden(Z)V

    .line 2309
    :cond_18
    return-void
.end method

.method public onGridStateChanged()V
    .registers 1

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->updateViews()V

    .line 1299
    return-void
.end method

.method protected onSizeChanged()V
    .registers 8

    .prologue
    const/high16 v6, 0x4240

    const/high16 v4, 0x422c

    const/4 v5, 0x0

    .line 1261
    iget v0, p0, Lcom/cooliris/media/Layer;->mWidth:F

    .line 1262
    iget v1, p0, Lcom/cooliris/media/Layer;->mHeight:F

    .line 1263
    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->closeSelectionMenu()V

    .line 1265
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v6

    sub-float v3, v1, v3

    invoke-virtual {v2, v5, v3}, Lcom/cooliris/media/TimeBar;->setPosition(FF)V

    .line 1266
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/cooliris/media/TimeBar;->setSize(FF)V

    .line 1267
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v2, v5, v5}, Lcom/cooliris/media/MenuBar;->setPosition(FF)V

    .line 1268
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/cooliris/media/MenuBar;->setSize(FF)V

    .line 1269
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    invoke-virtual {v2, v5, v3}, Lcom/cooliris/media/MenuBar;->setPosition(FF)V

    .line 1270
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/cooliris/media/MenuBar;->setSize(FF)V

    .line 1271
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v2, v5, v1}, Lcom/cooliris/media/MenuBar;->setPosition(FF)V

    .line 1272
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/cooliris/media/MenuBar;->setSize(FF)V

    .line 1274
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    const/high16 v2, -0x3f80

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/cooliris/media/PathBarLayer;->setPosition(FF)V

    .line 1275
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->computeSizeForPathbar()V

    .line 1277
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v2}, Lcom/cooliris/media/ImageButton;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {v1, v2, v5}, Lcom/cooliris/media/ImageButton;->setPosition(FF)V

    .line 1278
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v2}, Lcom/cooliris/media/ImageButton;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v3}, Lcom/cooliris/media/ImageButton;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v4}, Lcom/cooliris/media/ImageButton;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40a0

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/cooliris/media/ImageButton;->setPosition(FF)V

    .line 1280
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v2}, Lcom/cooliris/media/ImageButton;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {v1, v2, v5}, Lcom/cooliris/media/ImageButton;->setPosition(FF)V

    .line 1281
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v2}, Lcom/cooliris/media/ImageButton;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v3}, Lcom/cooliris/media/ImageButton;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/cooliris/media/ImageButton;->setPosition(FF)V

    .line 1282
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    const/high16 v2, 0x42b4

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x4120

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/cooliris/media/ImageButton;->setPosition(FF)V

    .line 1283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1560
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1568
    :cond_6
    return v2
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 4
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1478
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAnimAlpha:F

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 1479
    return-void
.end method

.method public renderOpaque(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1474
    return-void
.end method

.method reset()V
    .registers 3

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mLoadingLayer:Lcom/cooliris/media/LoadingLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/LoadingLayer;->reset()V

    .line 1578
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 1579
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0}, Lcom/cooliris/media/ImageButton;->reset()V

    .line 1580
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_1a

    .line 1581
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTopRightRotateButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0}, Lcom/cooliris/media/ImageButton;->reset()V

    .line 1583
    :cond_1a
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomInButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0}, Lcom/cooliris/media/ImageButton;->reset()V

    .line 1584
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mZoomOutButton:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0}, Lcom/cooliris/media/ImageButton;->reset()V

    .line 1585
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mMotionInfo:Lcom/cooliris/media/ImageButton;

    invoke-virtual {v0}, Lcom/cooliris/media/ImageButton;->reset()V

    .line 1586
    return-void
.end method

.method public resetNumItemsMenu()V
    .registers 4

    .prologue
    .line 1215
    new-instance v1, Lcom/cooliris/media/MenuBar$Menu$Builder;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    .line 1224
    .local v0, menu:Lcom/cooliris/media/MenuBar$Menu;
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cooliris/media/MenuBar;->updateMenu(Lcom/cooliris/media/MenuBar$Menu;I)V

    .line 1225
    return-void
.end method

.method public resetSetDefaultDestSharedPrefs(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 3063
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3066
    const-string v1, "PREFS_COUNT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3067
    const-string v1, "PREFS_RESULT"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3068
    const-string v1, "PREFS_SINGLE"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3069
    return-void
.end method

.method public runNoSelectionMoreMenu()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3089
    new-array v0, v6, [Lcom/cooliris/media/PopupMenu$Option;

    .line 3090
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3093
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cooliris/media/PopupMenu$Option;

    new-instance v3, Lcom/cooliris/media/PopupMenu$Option;

    iget-object v4, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/cooliris/media/HudLayer$54;

    invoke-direct {v5, p0}, Lcom/cooliris/media/HudLayer$54;-><init>(Lcom/cooliris/media/HudLayer;)V

    invoke-direct {v3, v1, v4, v5}, Lcom/cooliris/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v3, v2, v6

    .line 3194
    invoke-static {v0, v2}, Lcom/cooliris/media/HudLayer;->concat([Lcom/cooliris/media/PopupMenu$Option;[Lcom/cooliris/media/PopupMenu$Option;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v0

    .line 3198
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 3199
    iget-object v2, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v2}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v0, v1, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 3200
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1482
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    .line 1483
    iput p1, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    .line 1484
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_12

    .line 1485
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_12

    .line 1486
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1492
    :cond_12
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1c

    .line 1493
    const/4 v0, 0x0

    :try_start_19
    iput v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    .line 1507
    :cond_1b
    :goto_1b
    return-void

    .line 1501
    :cond_1c
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1b

    .line 1502
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_1b

    .line 1504
    :catch_25
    move-exception v0

    .line 1505
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 584
    iput-object p1, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    .line 585
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 587
    :cond_f
    return-void
.end method

.method public setFeed(Lcom/cooliris/media/MediaFeed;IZ)V
    .registers 5
    .parameter "feed"
    .parameter "state"
    .parameter "needsLayout"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mTimeBar:Lcom/cooliris/media/TimeBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cooliris/media/TimeBar;->setFeed(Lcom/cooliris/media/MediaFeed;IZ)V

    .line 1295
    return-void
.end method

.method setGridLayer(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter "layer"

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 1242
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->updateViews()V

    .line 1243
    return-void
.end method

.method setMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1253
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mMode:I

    if-eq v0, p1, :cond_9

    .line 1254
    iput p1, p0, Lcom/cooliris/media/HudLayer;->mMode:I

    .line 1255
    invoke-direct {p0}, Lcom/cooliris/media/HudLayer;->updateViews()V

    .line 1257
    :cond_9
    return-void
.end method

.method public setTimeBarTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 1515
    return-void
.end method

.method public swapFullscreenLabel()V
    .registers 3

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    if-nez v0, :cond_1e

    :cond_12
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedPosition:Ljava/lang/String;

    :goto_14
    iput-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    .line 2233
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mPathBar:Lcom/cooliris/media/PathBarLayer;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 2234
    return-void

    .line 2230
    :cond_1e
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    goto :goto_14
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v7, 0x40a0

    const/4 v6, 0x0

    const/high16 v1, 0x3f80

    .line 1441
    .line 1442
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8c

    .line 1444
    const/high16 v0, 0x4080

    .line 1446
    :goto_f
    iget v2, p0, Lcom/cooliris/media/HudLayer;->mAnimAlpha:F

    iget v5, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    mul-float/2addr v0, p2

    invoke-static {v2, v5, v0}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/HudLayer;->mAnimAlpha:F

    .line 1447
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_63

    move v2, v3

    .line 1448
    :goto_21
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_2c

    .line 1449
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->setOrientationListener()V

    .line 1451
    :cond_2c
    invoke-virtual {p0}, Lcom/cooliris/media/HudLayer;->fullScreenMenuViewSet()V

    .line 1453
    iget-boolean v0, p0, Lcom/cooliris/media/HudLayer;->mAutoHide:Z

    if-eqz v0, :cond_51

    .line 1454
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_65

    iget v0, p0, Lcom/cooliris/media/HudLayer;->mMode:I

    if-eq v0, v3, :cond_65

    .line 1455
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    .line 1456
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iget-boolean v0, v0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    if-nez v0, :cond_51

    .line 1457
    invoke-virtual {p0, v6}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 1464
    :cond_51
    :goto_51
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAnimAlpha:F

    iget v1, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_61

    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_62

    if-nez v2, :cond_62

    :cond_61
    move v4, v3

    .line 1468
    :cond_62
    return v4

    :cond_63
    move v2, v4

    .line 1447
    goto :goto_21

    .line 1458
    :cond_65
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1459
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    .line 1460
    iget v0, p0, Lcom/cooliris/media/HudLayer;->mLastTimeFullOpacity:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iget-boolean v0, v0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    if-nez v0, :cond_51

    .line 1461
    invoke-virtual {p0, v6}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_51

    :cond_8c
    move v0, v1

    goto :goto_f
.end method

.method public updateNumItemsSelected(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1194
    .line 1195
    if-lez p1, :cond_55

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v3, :cond_49

    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f060045

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    new-instance v1, Lcom/cooliris/media/MenuBar$Menu$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/MenuBar$Menu$Builder;->config(Lcom/cooliris/media/StringTexture$Config;)Lcom/cooliris/media/MenuBar$Menu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    .line 1211
    :goto_43
    iget-object v1, p0, Lcom/cooliris/media/HudLayer;->mSelectionMenuTop:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1, v0, v3}, Lcom/cooliris/media/MenuBar;->updateMenu(Lcom/cooliris/media/MenuBar$Menu;I)V

    .line 1212
    return-void

    .line 1196
    :cond_49
    iget-object v0, p0, Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f060046

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 1209
    :cond_55
    new-instance v0, Lcom/cooliris/media/MenuBar$Menu$Builder;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/cooliris/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar$Menu$Builder;->build()Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    goto :goto_43
.end method
