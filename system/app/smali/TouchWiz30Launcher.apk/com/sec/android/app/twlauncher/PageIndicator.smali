.class public Lcom/sec/android/app/twlauncher/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/PageIndicator$1;,
        Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;,
        Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;
    }
.end annotation


# static fields
.field private static PAGE_NUMBER_REMOVE:Z

.field private static mRate:[F


# instance fields
.field private mBarRatioLeft:F

.field private mBarRatioRight:F

.field private mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

.field private mCurrentPage:I

.field private mDrawing:Z

.field private mEnableShowHide:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mHandler:Landroid/os/Handler;

.field private mIconNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mIconTextPaint:Landroid/graphics/Paint;

.field private mIsHiding:Z

.field private mIsLongPressPending:Z

.field private mLeft:I

.field private mLeftPage:I

.field private mMaxIcons:I

.field private mNoMediumIcon:Z

.field private mPaddingH:I

.field private mPaddingV:I

.field private mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

.field private mPageWidth:I

.field private mPanelNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mPanelTextPaint:Landroid/graphics/Paint;

.field private mParent:Lcom/sec/android/app/twlauncher/Scene;

.field private mSeekBarMode:Z

.field private mSeekBarPanelOffset:I

.field private mShow:Z

.field private mThumbCurrent:I

.field private mThumbStart:I

.field private mThumbStartOffset:I

.field private mThumbWidth:I

.field private mTop:I

.field private mTotalPages:I

.field private mTouchEnabled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/PageIndicator;->PAGE_NUMBER_REMOVE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V
    .registers 16
    .parameter "r"
    .parameter "fastScrollPanelOffset"
    .parameter "maxPageIcons"
    .parameter "iconTop"
    .parameter "iconPaddingH"
    .parameter "iconPaddingV"
    .parameter "noMediumIcon"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    .line 96
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTouchEnabled:Z

    .line 112
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    .line 123
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 171
    const-string v1, "800x480"

    const-string v2, "1280x800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "800x480"

    const-string v2, "1280x720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 172
    :cond_3d
    new-array v1, v5, [F

    fill-array-data v1, :array_102

    sput-object v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    .line 176
    :goto_44
    iput p3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    .line 177
    iput p4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    .line 178
    iput p5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    .line 179
    iput p6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    .line 180
    iput-boolean p7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    .line 181
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0040

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0041

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 194
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 195
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 196
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 197
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 199
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f020021

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 200
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f02005a

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 202
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f020059

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 204
    const v1, 0x7f020058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c7
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_e0

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    new-instance v2, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    aput-object v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 174
    .end local v0           #i:I
    :cond_d7
    new-array v1, v5, [F

    fill-array-data v1, :array_10e

    sput-object v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    goto/16 :goto_44

    .line 209
    .restart local v0       #i:I
    :cond_e0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    .line 210
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 212
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v1, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/PageIndicator$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    .line 215
    iput-object p8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    .line 216
    return-void

    .line 172
    :array_102
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 174
    :array_10e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x85t 0xebt 0x51t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/PageIndicator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/twlauncher/PageIndicator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    return-object v0
.end method

.method static synthetic access$400()[F
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/PageIndicator;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/PageIndicator;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    return-void
.end method

.method private disableIconStates()V
    .registers 4

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_10

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_10
    return-void
.end method

.method private drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "glcanvas"
    .parameter "number"
    .parameter
    .parameter "defaultSurface"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/GLCanvas;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;>;"
    const/4 v8, 0x0

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 356
    .local v3, surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-nez v3, :cond_31

    .line 357
    move-object v2, p5

    .line 358
    .local v2, p:Landroid/graphics/Paint;
    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v1, c:Landroid/graphics/Canvas;
    sget-boolean v4, Lcom/sec/android/app/twlauncher/PageIndicator;->PAGE_NUMBER_REMOVE:Z

    if-eqz v4, :cond_35

    .line 374
    :goto_25
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    .restart local v3       #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #p:Landroid/graphics/Paint;
    :cond_31
    invoke-virtual {p1, v3, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 378
    return-void

    .line 368
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #c:Landroid/graphics/Canvas;
    .restart local v2       #p:Landroid/graphics/Paint;
    :cond_35
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_25
.end method

.method private enableIconStates()V
    .registers 4

    .prologue
    .line 381
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_33

    .line 382
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-eq v1, v2, :cond_17

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    .line 381
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_17
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    if-nez v1, :cond_21

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2a

    .line 385
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_14

    .line 387
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_14

    .line 389
    :cond_33
    return-void
.end method

.method private enterSeekBarMode()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 449
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    .line 450
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 451
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int v0, v7, v8

    .line 452
    .local v0, barPixelsLeft:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int v1, v7, v8

    .line 453
    .local v1, barPixelsRight:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    .line 454
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    .line 455
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    .line 456
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    .line 462
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    if-eq v7, v8, :cond_a4

    .line 463
    :cond_49
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 464
    .local v4, height:I
    int-to-float v7, v4

    const/high16 v8, 0x4000

    div-float v6, v7, v8

    .line 466
    .local v6, radius:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 467
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 468
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 469
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    const/16 v7, 0x4c

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 471
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 472
    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v7, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 474
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    const v7, 0x3e4ccccd

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 477
    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v7, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 479
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-nez v7, :cond_a5

    .line 480
    new-instance v7, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v7, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 485
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #height:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #radius:F
    :cond_a4
    :goto_a4
    return-void

    .line 482
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #height:I
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v6       #radius:F
    :cond_a5
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    check-cast v7, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_a4
.end method


# virtual methods
.method public centerCurrentPage(I)V
    .registers 6
    .parameter "currentPage"

    .prologue
    const/4 v3, 0x0

    .line 254
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 255
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 256
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 257
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lez v2, :cond_51

    .line 258
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-gez v2, :cond_52

    .line 259
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 263
    :cond_11
    :goto_11
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 264
    .local v1, pageCount:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-le v2, v3, :cond_38

    .line 265
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    .line 266
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    div-int/lit8 v0, v2, 0x2

    .line 267
    .local v0, half:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-le v2, v0, :cond_38

    .line 268
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 269
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_38

    .line 270
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 273
    .end local v0           #half:I
    :cond_38
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    .line 274
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 275
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v2, :cond_51

    .line 276
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 278
    .end local v1           #pageCount:I
    :cond_51
    return-void

    .line 260
    :cond_52
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_11

    .line 261
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    goto :goto_11
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .registers 20
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 287
    const/4 v15, 0x0

    .line 288
    .local v15, redraw:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_af

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_af

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lez v1, :cond_af

    .line 289
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    add-int p2, p2, v1

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 292
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v1, :cond_144

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v12

    .line 296
    .local v12, iconSurfaceHeight:I
    move/from16 v0, p2

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_b0

    .line 337
    .end local v12           #iconSurfaceHeight:I
    :cond_43
    :goto_43
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int v8, p2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v6

    add-int v9, v1, v6

    move-object/from16 v1, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(IIIIIIII)V

    .line 341
    if-nez v15, :cond_af

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_af

    .line 342
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 343
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 346
    :cond_af
    return v15

    .line 302
    .restart local v12       #iconSurfaceHeight:I
    :cond_b0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v10

    .line 303
    .local v10, height:I
    sub-int v1, v12, v10

    div-int/lit8 v16, v1, 0x2

    .line 305
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v5, v1

    add-int v1, v16, v10

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v10

    .line 309
    sub-int v1, v12, v10

    div-int/lit8 v16, v1, 0x2

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    add-int v1, v16, v10

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 316
    sget-boolean v1, Lcom/sec/android/app/twlauncher/PageIndicator;->PAGE_NUMBER_REMOVE:Z

    if-eqz v1, :cond_13a

    .line 321
    :goto_11c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v1, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_43

    .line 319
    :cond_13a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_11c

    .line 327
    .end local v10           #height:I
    .end local v12           #iconSurfaceHeight:I
    .end local v16           #y:I
    :cond_144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, p2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 328
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 329
    .local v13, pageCount:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 330
    .local v14, pageNum:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_168
    if-ge v11, v13, :cond_43

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v2, v1, v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-ne v14, v1, :cond_195

    add-int/lit8 v1, v14, 0x1

    :goto_17b
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v1

    or-int/2addr v15, v1

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 334
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 330
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_168

    .line 332
    :cond_195
    const/4 v1, -0x1

    goto :goto_17b
.end method

.method public enableShowHide(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eq v0, p1, :cond_12

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 398
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    if-nez v0, :cond_12

    .line 399
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_13

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 405
    :cond_12
    :goto_12
    return-void

    .line 402
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    goto :goto_12
.end method

.method public enterSeekBarMode(IIZ)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "alwaysSeekBar"

    .prologue
    .line 422
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_37

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 429
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .line 430
    .local v0, page:I
    if-nez p3, :cond_27

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-ne v0, v1, :cond_37

    .line 431
    :cond_27
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    if-nez v1, :cond_37

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 440
    .end local v0           #page:I
    :cond_37
    :goto_37
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v1

    .line 437
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto :goto_37
.end method

.method public exitSeekBarMode()V
    .registers 2

    .prologue
    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 492
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    .line 494
    return-void
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    return v0
.end method

.method getTouchPage(II)I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 506
    const/4 v0, -0x1

    .line 507
    .local v0, page:I
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 509
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .line 511
    :cond_1e
    return v0
.end method

.method public getTouchScrollOffset(IIZ)I
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "ignoreIfTouchIsInBounds"

    .prologue
    .line 515
    const/4 v1, -0x1

    .line 516
    .local v1, offset:I
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v4, :cond_43

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v4, :cond_43

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v4, :cond_43

    if-nez p3, :cond_15

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 518
    :cond_15
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v3, p1, v4

    .line 519
    .local v3, xOffset:I
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v4, :cond_6e

    .line 521
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 522
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    if-ge v4, v5, :cond_44

    .line 523
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    if-gez v4, :cond_32

    .line 524
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 525
    :cond_32
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 535
    :cond_39
    :goto_39
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 543
    .end local v3           #xOffset:I
    :cond_43
    :goto_43
    return v1

    .line 528
    .restart local v3       #xOffset:I
    :cond_44
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_54

    .line 529
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 530
    :cond_54
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 531
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v4, v5

    .line 532
    .local v0, maxOffset:I
    if-le v1, v0, :cond_39

    .line 533
    move v1, v0

    goto :goto_39

    .line 539
    .end local v0           #maxOffset:I
    :cond_6e
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int v5, v3, v5

    add-int v2, v4, v5

    .line 540
    .local v2, page:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v1, v2, v4

    goto :goto_43
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_12

    .line 548
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 551
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 552
    return-void
.end method

.method public inSeekBarMode()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v0
.end method

.method public isInPageIndicator(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTouchEnabled:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_28

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    if-lt p1, v0, :cond_28

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_28

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public resetFastScrollTimer()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 243
    return-void
.end method

.method public setLayout(II)V
    .registers 3
    .parameter "pageCount"
    .parameter "pageWidth"

    .prologue
    .line 586
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 587
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    .line 588
    return-void
.end method

.method public setPageScrollOffset(I)V
    .registers 6
    .parameter "offset"

    .prologue
    .line 591
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v1, :cond_1b

    .line 592
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    if-ge p1, v1, :cond_21

    .line 593
    if-lez p1, :cond_1c

    .line 594
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 609
    :goto_11
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 612
    :cond_1b
    return-void

    .line 596
    :cond_1c
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 597
    const/4 p1, 0x0

    goto :goto_11

    .line 601
    :cond_21
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v1, v2

    .line 602
    .local v0, maxOffset:I
    if-ge p1, v0, :cond_3a

    .line 603
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    goto :goto_11

    .line 605
    :cond_3a
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 606
    move p1, v0

    goto :goto_11
.end method

.method public setTouchEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTouchEnabled:Z

    .line 622
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 625
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-nez v0, :cond_11

    .line 626
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 627
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 628
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 630
    :cond_11
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 631
    return-void
.end method
