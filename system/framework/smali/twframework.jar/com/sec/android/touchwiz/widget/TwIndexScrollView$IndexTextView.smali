.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
.super Landroid/view/View;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexTextView"
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexPath:Ljava/lang/String;

.field protected mIndexPathArray:[Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1772
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1773
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1774
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1779
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1780
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1781
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1786
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1787
    .local v0, rsrc:Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setFocusable(Z)V

    .line 1788
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    .line 1789
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1790
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1791
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x2060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1792
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x205000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1793
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1794
    const v1, 0x202001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1796
    return-void
.end method


# virtual methods
.method getIndexPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 1799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    if-eqz v1, :cond_15a

    .line 1800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    .line 1801
    .local v14, length:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getWidth()I

    move-result v21

    .line 1802
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getHeight()I

    move-result v11

    .line 1803
    .local v11, height:I
    div-int/lit8 v20, v21, 0x2

    .line 1805
    .local v20, textX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    .line 1808
    .local v15, pf:Landroid/graphics/Paint$FontMetrics;
    iget v1, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    move/from16 v22, v0

    .line 1811
    .local v22, yDelta:I
    iget v1, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    add-int v8, v1, v3

    .line 1813
    .local v8, BGRectHeight:I
    div-int/lit8 v1, v11, 0x2

    div-int/lit8 v3, v8, 0x2

    sub-int v9, v1, v3

    .line 1814
    .local v9, BGTopMargin:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1822
    move/from16 v0, v20

    int-to-float v1, v0

    int-to-float v3, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1832
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1834
    .local v16, res:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_51
    if-ge v12, v14, :cond_61

    .line 1835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    aget-object v1, v1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1834
    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    .line 1838
    :cond_61
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1840
    .local v2, strToDraw:Ljava/lang/String;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1841
    .local v18, stringBound:Landroid/graphics/Rect;
    const/4 v1, 0x1

    new-array v0, v1, [F

    move-object/from16 v19, v0

    .line 1842
    .local v19, textWidth:[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1845
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    aget v3, v19, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v13, v1, v3

    .line 1846
    .local v13, left:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    aget v3, v19, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v17, v1, v3

    .line 1847
    .local v17, right:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c5

    .line 1848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    neg-int v13, v1

    .line 1849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v17

    .line 1853
    :cond_c5
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1854
    .local v10, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v10, Landroid/graphics/Rect;->left:I

    sub-int v3, v13, v3

    iget v4, v10, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v17

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1862
    const/4 v1, 0x0

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_15b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v1

    if-nez v1, :cond_15b

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2000()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1868
    :goto_117
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    aget v1, v19, v1

    neg-float v1, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2000()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1871
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16b

    .line 1872
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1876
    :goto_157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1878
    .end local v2           #strToDraw:Ljava/lang/String;
    .end local v8           #BGRectHeight:I
    .end local v9           #BGTopMargin:I
    .end local v10           #bgPadding:Landroid/graphics/Rect;
    .end local v11           #height:I
    .end local v12           #i:I
    .end local v13           #left:I
    .end local v14           #length:I
    .end local v15           #pf:Landroid/graphics/Paint$FontMetrics;
    .end local v16           #res:Ljava/lang/StringBuffer;
    .end local v17           #right:I
    .end local v18           #stringBound:Landroid/graphics/Rect;
    .end local v19           #textWidth:[F
    .end local v20           #textX:I
    .end local v21           #width:I
    .end local v22           #yDelta:I
    :cond_15a
    return-void

    .line 1866
    .restart local v2       #strToDraw:Ljava/lang/String;
    .restart local v8       #BGRectHeight:I
    .restart local v9       #BGTopMargin:I
    .restart local v10       #bgPadding:Landroid/graphics/Rect;
    .restart local v11       #height:I
    .restart local v12       #i:I
    .restart local v13       #left:I
    .restart local v14       #length:I
    .restart local v15       #pf:Landroid/graphics/Paint$FontMetrics;
    .restart local v16       #res:Ljava/lang/StringBuffer;
    .restart local v17       #right:I
    .restart local v18       #stringBound:Landroid/graphics/Rect;
    .restart local v19       #textWidth:[F
    .restart local v20       #textX:I
    .restart local v21       #width:I
    .restart local v22       #yDelta:I
    :cond_15b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_117

    .line 1874
    :cond_16b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v5, 0x0

    aget v5, v19, v5

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_157
.end method

.method setIndexPath(Ljava/lang/String;)V
    .registers 5
    .parameter "indexPath"

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    .line 1881
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    .line 1882
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1883
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1882
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1885
    :cond_20
    return-void
.end method
