.class public Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I = 0x46

.field private static final LIST_ITEM_WIDTH:I = 0x190

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x24

.field private static final MENU_HEIGHT:I = 0x1d3

.field private static final MENU_PORTRAIT_HEIGHT:I = 0x226

.field private static final MENU_POS_X:I = 0x58

.field private static final MENU_POS_Y:I = 0x6

.field private static final MENU_WIDTH:I = 0x190

.field private static final TITLE_FONT_SIZE:F = 20.0f

.field private static final TITLE_HEIGHT:I = 0x24

.field private static final TITLE_LEFT_PADDING:I = 0x6

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mItemList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSelectedSettingMenuId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0xff

    .line 59
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .registers 19
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 74
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    .line 70
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 76
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 78
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42b0

    const/high16 v4, 0x40c0

    const/high16 v5, 0x43c8

    const v6, 0x43e98000

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x7f020177

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 80
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x40c0

    const/4 v4, 0x0

    const/high16 v5, 0x43c5

    const/high16 v6, 0x4210

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 83
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4210

    const/high16 v6, 0x43c8

    const v7, 0x43d78000

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f02017b

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 92
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget v3, v10, Landroid/util/DisplayMetrics;->ydpi:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const v4, 0x41cb3333

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollThreshold(F)V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const v4, 0x441f8000

    const/high16 v5, 0x40c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x43f4

    const v5, 0x43ec8000

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x42b0

    const/high16 v5, 0x43cb

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    return-object v0
.end method

.method private refreshMenuPosition()V
    .registers 10

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 255
    const/4 v3, 0x6

    .line 257
    .local v3, padding:I
    const/high16 v4, 0x40c0

    .line 259
    .local v4, top:F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_66

    .line 267
    :pswitch_f
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 270
    .local v1, height:F
    :goto_15
    add-float v0, v4, v1

    .line 272
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v5, :cond_3d

    .line 273
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    div-float v6, v1, v8

    add-float/2addr v6, v4

    sub-float v2, v5, v6

    .line 274
    .local v2, move:F
    add-float v5, v4, v2

    cmpg-float v5, v5, v7

    if-gez v5, :cond_45

    .line 275
    neg-float v5, v4

    int-to-float v6, v3

    add-float v2, v5, v6

    .line 279
    :cond_38
    :goto_38
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5, v7, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 281
    .end local v2           #move:F
    :cond_3d
    return-void

    .line 262
    .end local v0           #bottom:F
    .end local v1           #height:F
    :pswitch_3e
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 263
    .restart local v1       #height:F
    goto :goto_15

    .line 276
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_45
    add-float v5, v0, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_38

    .line 277
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    int-to-float v6, v3

    sub-float v2, v5, v6

    goto :goto_38

    .line 259
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 156
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    monitor-enter v3

    .line 157
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 158
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_d

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    .line 160
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    .line 162
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    .line 163
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 164
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 228
    :cond_c
    return v1
.end method

.method public onAnimationEnd()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1e

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 220
    :cond_1e
    return v2
.end method

.method public onAnimationStart()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_b

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDrag(FFFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 197
    return-void
.end method

.method public onDragEnd(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 201
    return-void
.end method

.method public onDragStart(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 193
    return-void
.end method

.method protected onHide()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_13

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 183
    :cond_13
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 184
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5
    .parameter "orientation"

    .prologue
    const/high16 v2, 0x43c8

    .line 237
    packed-switch p1, :pswitch_data_2a

    .line 246
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x43e98000

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x43d78000

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 250
    :goto_15
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->refreshMenuPosition()V

    .line 251
    return-void

    .line 240
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x44098000

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x44008000

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto :goto_15

    .line 237
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_5
        :pswitch_19
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 234
    return-void
.end method

.method protected onShow()V
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 170
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->refreshMenuPosition()V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 172
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 173
    return-void
.end method

.method public resetSettingsText()V
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSettingsText()V

    .line 189
    :cond_16
    return-void
.end method

.method public setSelectedSettingMenuId(I)V
    .registers 2
    .parameter "commandId"

    .prologue
    .line 284
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 285
    return-void
.end method
