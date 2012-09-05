.class Lcom/android/browser/TabBar$TabView;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field mClose:Landroid/widget/ImageView;

.field mFocusPath:Landroid/graphics/Path;

.field mIconView:Landroid/widget/ImageView;

.field mInLoad:Z

.field mIncognito:Landroid/view/View;

.field mLock:Landroid/widget/ImageView;

.field mPath:Landroid/graphics/Path;

.field mPressed:Z

.field mSelected:Z

.field mSnapshot:Landroid/view/View;

.field mTab:Lcom/android/browser/Tab;

.field mTabContent:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mWindowPos:[I

.field final synthetic this$0:Lcom/android/browser/TabBar;


# direct methods
.method public constructor <init>(Lcom/android/browser/TabBar;Landroid/content/Context;Lcom/android/browser/Tab;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "tab"

    .prologue
    const/4 v3, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    .line 294
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar$TabView;->setWillNotDraw(Z)V

    .line 296
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    .line 297
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    .line 298
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    .line 299
    iput-object p3, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    .line 300
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setGravity(I)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar$TabView;->setOrientation(I)V

    .line 302
    #getter for: Lcom/android/browser/TabBar;->mTabOverlap:I
    invoke-static {p1}, Lcom/android/browser/TabBar;->access$000(Lcom/android/browser/TabBar;)I

    move-result v1

    #getter for: Lcom/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {p1}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/browser/TabBar$TabView;->setPadding(IIII)V

    .line 303
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 304
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040042

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    .line 305
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    .line 306
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    .line 307
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    .line 308
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    .line 309
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    .line 311
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d00c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mSnapshot:Landroid/view/View;

    .line 312
    iput-boolean v3, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/browser/TabBar$TabView;->mPressed:Z

    .line 317
    iput-boolean v3, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 319
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->updateFromTab()V

    .line 320
    return-void
.end method

.method static synthetic access$2400(Lcom/android/browser/TabBar$TabView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->updateTabIcons()V

    return-void
.end method

.method private closeTab()V
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$500(Lcom/android/browser/TabBar;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 402
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/UiController;->closeCurrentTab()V

    .line 406
    :goto_17
    return-void

    .line 404
    :cond_18
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_17
.end method

.method private drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V
    .registers 8
    .parameter "canvas"
    .parameter "paint"
    .parameter "clipPath"
    .parameter "left"

    .prologue
    .line 487
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1900(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 488
    .local v0, matrix:Landroid/graphics/Matrix;
    :goto_a
    neg-int v1, p4

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 489
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    :goto_1a
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 490
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 492
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/browser/TabBar;->access$2100(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 494
    :cond_31
    return-void

    .line 487
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_32
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$2000(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_a

    .line 489
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_39
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    goto :goto_1a
.end method

.method private setFocusPath(Landroid/graphics/Path;IIII)V
    .registers 8
    .parameter "path"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 507
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 508
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 509
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 510
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 511
    return-void
.end method

.method private setTabPath(Landroid/graphics/Path;IIII)V
    .registers 8
    .parameter "path"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 498
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 499
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 501
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 503
    return-void
.end method

.method private updateFromTab()V
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, displayTitle:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 332
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 336
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 337
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/XLargeUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_35
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->updateTabIcons()V

    .line 340
    return-void
.end method

.method private updateTabIcons()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 343
    iget-object v3, p0, Lcom/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mSnapshot:Landroid/view/View;

    iget-object v3, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v3

    if-eqz v3, :cond_21

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    return-void

    :cond_1f
    move v0, v2

    .line 343
    goto :goto_e

    :cond_21
    move v1, v2

    .line 346
    goto :goto_1b
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 438
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/XLargeUi;->getContentWidth()I

    move-result v6

    if-ne v5, v6, :cond_1e

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_df

    .line 440
    :cond_1e
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/XLargeUi;->getContentWidth()I

    move-result v6

    #setter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v5, v6}, Lcom/android/browser/TabBar;->access$702(Lcom/android/browser/TabBar;I)I

    .line 441
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getHeight()I

    move-result v6

    #setter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v5, v6}, Lcom/android/browser/TabBar;->access$802(Lcom/android/browser/TabBar;I)I

    .line 443
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)I

    move-result v5

    if-lez v5, :cond_df

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v5

    if-lez v5, :cond_df

    .line 444
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$900(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v7}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v7

    #calls: Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/browser/TabBar;->access$1000(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    .local v0, activeTexture:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1100(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v7}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v7

    #calls: Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/browser/TabBar;->access$1000(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 450
    .local v1, inactiveTexture:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1200(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v7}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v7

    #calls: Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/browser/TabBar;->access$1000(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 453
    .local v3, pressedTexture:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #setter for: Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5, v6}, Lcom/android/browser/TabBar;->access$1302(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 455
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 457
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #setter for: Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5, v6}, Lcom/android/browser/TabBar;->access$1502(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 459
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 462
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v3, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #setter for: Lcom/android/browser/TabBar;->mPressedShader:Landroid/graphics/BitmapShader;
    invoke-static {v5, v6}, Lcom/android/browser/TabBar;->access$1702(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 464
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mPressedShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mPressedShader:Landroid/graphics/BitmapShader;
    invoke-static {v6}, Lcom/android/browser/TabBar;->access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 469
    .end local v0           #activeTexture:Landroid/graphics/Bitmap;
    .end local v1           #inactiveTexture:Landroid/graphics/Bitmap;
    .end local v3           #pressedTexture:Landroid/graphics/Bitmap;
    :cond_df
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    if-eqz v5, :cond_119

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    if-eqz v5, :cond_119

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 471
    .local v4, state:I
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    invoke-virtual {p0, v5}, Lcom/android/browser/TabBar$TabView;->getLocationInWindow([I)V

    .line 472
    iget-boolean v5, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v5, :cond_11d

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    .line 476
    .local v2, paint:Landroid/graphics/Paint;
    :goto_102
    iget-boolean v5, p0, Lcom/android/browser/TabBar$TabView;->mPressed:Z

    if-eqz v5, :cond_10c

    .line 477
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mPressedShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    .line 479
    :cond_10c
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {p0, p1, v2, v5, v6}, Lcom/android/browser/TabBar$TabView;->drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V

    .line 480
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 482
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v4           #state:I
    :cond_119
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 483
    return-void

    .line 472
    .restart local v4       #state:I
    :cond_11d
    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_102
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 325
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->closeTab()V

    .line 327
    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 432
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/TabBar$TabView;->setTabPath(Landroid/graphics/Path;IIII)V

    .line 433
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/TabBar$TabView;->setFocusPath(Landroid/graphics/Path;IIII)V

    .line 434
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 424
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 415
    :pswitch_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mPressed:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->invalidate()V

    goto :goto_7

    .line 420
    :pswitch_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mPressed:Z

    .line 421
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->invalidate()V

    goto :goto_7

    .line 412
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method

.method public setActivated(Z)V
    .registers 7
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    .line 353
    iget-object v3, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v0, :cond_37

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v3, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$300(Lcom/android/browser/TabBar;)Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v0, :cond_3a

    const v0, 0x7f0f000d

    :goto_1d
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 359
    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-nez v0, :cond_3e

    move v0, v2

    :goto_25
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 360
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->updateLayoutParams()V

    .line 362
    if-nez p1, :cond_40

    :goto_30
    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar$TabView;->setFocusable(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->postInvalidate()V

    .line 364
    return-void

    .line 353
    :cond_37
    const/16 v0, 0x8

    goto :goto_b

    .line 357
    :cond_3a
    const v0, 0x7f0f000e

    goto :goto_1d

    :cond_3e
    move v0, v1

    .line 359
    goto :goto_25

    :cond_40
    move v2, v1

    .line 362
    goto :goto_30
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method

.method setFavicon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    return-void
.end method

.method setProgress(I)V
    .registers 3
    .parameter "newProgress"

    .prologue
    .line 391
    const/16 v0, 0x64

    if-lt p1, v0, :cond_8

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 398
    :cond_7
    :goto_7
    return-void

    .line 394
    :cond_8
    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    goto :goto_7
.end method

.method public updateLayoutParams()V
    .registers 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mTabWidth:I
    invoke-static {v1}, Lcom/android/browser/TabBar;->access$400(Lcom/android/browser/TabBar;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void
.end method
