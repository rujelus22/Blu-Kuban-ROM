.class public Lcom/android/browser/TabBar;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabBar$TabView;
    }
.end annotation


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mActiveMatrix:Landroid/graphics/Matrix;

.field private mActiveShader:Landroid/graphics/BitmapShader;

.field private final mActiveShaderPaint:Landroid/graphics/Paint;

.field private mActivity:Landroid/app/Activity;

.field private mAddTabOverlap:I

.field private mButtonWidth:I

.field private mCurrentTextureHeight:I

.field private mCurrentTextureWidth:I

.field private final mFocusPaint:Landroid/graphics/Paint;

.field private mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInactiveMatrix:Landroid/graphics/Matrix;

.field private mInactiveShader:Landroid/graphics/BitmapShader;

.field private final mInactiveShaderPaint:Landroid/graphics/Paint;

.field private mNewTab:Landroid/widget/ImageButton;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressedShader:Landroid/graphics/BitmapShader;

.field private final mPressedShaderPaint:Landroid/graphics/Paint;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/browser/Tab;",
            "Lcom/android/browser/TabBar$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private mTabNewPadding:I

.field private mTabOverlap:I

.field private mTabSliceWidth:I

.field private mTabWidth:I

.field private mTabs:Lcom/android/browser/TabScrollView;

.field private mUi:Lcom/android/browser/XLargeUi;

.field private mUiController:Lcom/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V
    .registers 9
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput v3, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    .line 75
    iput v3, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mPressedShaderPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    .line 92
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    .line 110
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    .line 111
    iput-object p2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    .line 112
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    .line 113
    iput-object p3, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    .line 116
    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f040041

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v3, v2, v3, v3}, Lcom/android/browser/TabBar;->setPadding(IIII)V

    .line 126
    const v2, 0x7f0d00c2

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/TabScrollView;

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    .line 127
    const v2, 0x7f0d007a

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    .line 128
    iget-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 131
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 133
    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    .line 134
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    .line 135
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    .line 137
    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabNewPadding:I

    .line 139
    iget-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0b0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TabBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/TabBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    return v0
.end method

.method static synthetic access$1000(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mPressedShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/TabBar;->mPressedShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mPressedShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/browser/TabBar;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/TabBar;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/TabBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/TabBar;)Lcom/android/browser/TabControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/TabBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/TabBar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/TabBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/TabBar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .registers 6
    .parameter "tab"
    .parameter "tv"

    .prologue
    .line 548
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1e

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 549
    .local v0, scalex:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 550
    new-instance v1, Lcom/android/browser/TabBar$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/TabBar$2;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 572
    return-void

    .line 548
    nop

    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .registers 10
    .parameter "tab"
    .parameter "tv"

    .prologue
    const/4 v6, 0x2

    .line 516
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_46

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 517
    .local v2, scalex:Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_4e

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 518
    .local v3, scaley:Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_56

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 519
    .local v0, alpha:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 520
    .local v1, animator:Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 521
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 522
    new-instance v4, Lcom/android/browser/TabBar$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/browser/TabBar$1;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/TabBar$TabView;Lcom/android/browser/Tab;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 544
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 545
    return-void

    .line 516
    :array_46
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 517
    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 518
    :array_56
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;
    .registers 4
    .parameter "tab"

    .prologue
    .line 252
    new-instance v0, Lcom/android/browser/TabBar$TabView;

    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/browser/TabBar$TabView;-><init>(Lcom/android/browser/TabBar;Landroid/content/Context;Lcom/android/browser/Tab;)V

    .line 253
    .local v0, tabview:Lcom/android/browser/TabBar$TabView;
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0, p0}, Lcom/android/browser/TabBar$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-object v0
.end method

.method private static getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 259
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    return-object v0
.end method

.method private isLoading()Z
    .registers 4

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 626
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_13

    .line 627
    iget-boolean v1, v0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 629
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private showUrlBar()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 248
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 249
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    if-ne v2, p1, :cond_a

    .line 220
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 244
    :cond_9
    :goto_9
    return-void

    .line 221
    :cond_a
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_58

    .line 222
    iget-boolean v2, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v2, :cond_3b

    .line 223
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 224
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 225
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_9

    .line 227
    :cond_2f
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 228
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    goto :goto_9

    .line 230
    :cond_3b
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_54

    .line 231
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 232
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_9

    .line 234
    :cond_54
    invoke-direct {p0}, Lcom/android/browser/TabBar;->showUrlBar()V

    goto :goto_9

    .line 236
    :cond_58
    instance-of v2, p1, Lcom/android/browser/TabBar$TabView;

    if-eqz v2, :cond_9

    move-object v2, p1

    .line 237
    check-cast v2, Lcom/android/browser/TabBar$TabView;

    iget-object v1, v2, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    .line 238
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    .line 239
    .local v0, ix:I
    if-ltz v0, :cond_9

    .line 240
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 241
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, v1}, Lcom/android/browser/UiController;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    .line 157
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1}, Lcom/android/browser/TabScrollView;->updateLayout()V

    .line 158
    return-void
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "tab"
    .parameter "favicon"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 586
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_13

    .line 587
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1, p2}, Lcom/android/browser/XLargeUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 589
    :cond_13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingLeft()I

    move-result v0

    .line 195
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingTop()I

    move-result v1

    .line 196
    .local v1, pt:I
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v4}, Lcom/android/browser/TabScrollView;->getMeasuredWidth()I

    move-result v2

    .line 197
    .local v2, sw:I
    sub-int v4, p4, p2

    sub-int v3, v4, v0

    .line 198
    .local v3, w:I
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v4, :cond_3b

    .line 199
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 206
    :cond_19
    :goto_19
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    add-int v5, v0, v2

    sub-int v6, p5, p3

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/browser/TabScrollView;->layout(IIII)V

    .line 208
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v4, :cond_3a

    .line 210
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    add-int v5, v0, v2

    iget v6, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/TabBar;->mTabNewPadding:I

    add-int/2addr v5, v6

    add-int v6, v0, v2

    iget v7, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    add-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 216
    :cond_3a
    return-void

    .line 201
    :cond_3b
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 202
    sub-int v4, v3, v2

    iget v5, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    if-ge v4, v5, :cond_19

    .line 203
    iget v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    sub-int v2, v3, v4

    goto :goto_19
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "hspec"
    .parameter "vspec"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 183
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredWidth()I

    move-result v0

    .line 185
    .local v0, w:I
    iget-boolean v1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v1, :cond_e

    .line 186
    iget v1, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v0, v1

    .line 188
    :cond_e
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/TabBar;->setMeasuredDimension(II)V

    .line 189
    return-void
.end method

.method public onNewTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v0

    .line 593
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 594
    return-void
.end method

.method public onProgress(Lcom/android/browser/Tab;I)V
    .registers 5
    .parameter "tab"
    .parameter "progress"

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 598
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_d

    .line 599
    invoke-virtual {v0, p2}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 601
    :cond_d
    return-void
.end method

.method public onRemoveTab(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 605
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_e

    .line 606
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 610
    :goto_d
    return-void

    .line 608
    :cond_e
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public onSetActiveTab(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 578
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 579
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_1e

    .line 580
    iget-object v1, v0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 582
    :cond_1e
    return-void
.end method

.method public onUrlAndTitle(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "tab"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 614
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_12

    .line 615
    if-eqz p3, :cond_13

    .line 616
    invoke-virtual {v0, p3}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 620
    :cond_f
    :goto_f
    #calls: Lcom/android/browser/TabBar$TabView;->updateTabIcons()V
    invoke-static {v0}, Lcom/android/browser/TabBar$TabView;->access$2400(Lcom/android/browser/TabBar$TabView;)V

    .line 622
    :cond_12
    return-void

    .line 617
    :cond_13
    if-eqz p2, :cond_f

    .line 618
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_f
.end method

.method setUseQuickControls(Z)V
    .registers 4
    .parameter "useQuickControls"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    .line 162
    iget-object v1, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    return-void

    .line 162
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method updateTabs(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3}, Lcom/android/browser/TabScrollView;->clearTabs()V

    .line 172
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 174
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-direct {p0, v1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v2

    .line 175
    .local v2, tv:Lcom/android/browser/TabBar$TabView;
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3, v2}, Lcom/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    goto :goto_e

    .line 177
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #tv:Lcom/android/browser/TabBar$TabView;
    :cond_24
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 178
    return-void
.end method
