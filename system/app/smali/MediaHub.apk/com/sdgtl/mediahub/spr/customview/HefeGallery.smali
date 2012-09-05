.class public Lcom/sdgtl/mediahub/spr/customview/HefeGallery;
.super Landroid/widget/Gallery;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private mCenterView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFlipperListener:Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsScrolling:Z

.field public mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mFlipperListener:Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mFlipperListener:Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setCallbackDuringFling(Z)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/k;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/k;-><init>(Lcom/sdgtl/mediahub/spr/customview/HefeGallery;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private notifyFlipperListener(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mFlipperListener:Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;

    invoke-interface {v0, p1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;->startFlipping(Z)V

    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    cmpl-float v2, p3, v4

    if-lez v2, :cond_23

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    if-nez v2, :cond_23

    move v2, v0

    :goto_14
    cmpg-float v4, p3, v4

    if-gez v4, :cond_1f

    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_1f

    move v1, v0

    :cond_1f
    or-int/2addr v1, v2

    if-eqz v1, :cond_25

    :goto_22
    return v0

    :cond_23
    move v2, v1

    goto :goto_14

    :cond_25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_22
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    if-nez v0, :cond_c

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->notifyFlipperListener(Z)V

    :cond_c
    cmpl-float v0, p3, v3

    if-lez v0, :cond_63

    move v0, v1

    :goto_11
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mCenterView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mCenterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getWidth()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_65

    if-nez v0, :cond_65

    sub-int v3, v5, v4

    int-to-float v4, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7f

    int-to-float v3, v3

    const/high16 v4, -0x4080

    mul-float/2addr v3, v4

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    if-nez v0, :cond_79

    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    if-nez v4, :cond_79

    move v4, v1

    :goto_52
    if-eqz v0, :cond_7b

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_7b

    :goto_5a
    or-int v0, v4, v1

    if-eqz v0, :cond_7d

    :goto_5e
    invoke-super {p0, p1, p2, v3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :cond_63
    move v0, v2

    goto :goto_11

    :cond_65
    if-le v4, v5, :cond_43

    if-eqz v0, :cond_43

    sub-int v3, v4, v5

    int-to-float v4, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7f

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    goto :goto_43

    :cond_79
    move v4, v2

    goto :goto_52

    :cond_7b
    move v1, v2

    goto :goto_5a

    :cond_7d
    move v3, p3

    goto :goto_5e

    :cond_7f
    move v3, p3

    goto :goto_43
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mCenterView:Landroid/view/View;

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mCenterView:Landroid/view/View;

    :cond_f
    packed-switch v0, :pswitch_data_24

    :goto_12
    :pswitch_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->notifyFlipperListener(Z)V

    goto :goto_12

    :pswitch_1d
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->notifyFlipperListener(Z)V

    goto :goto_12

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1d
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method public setFlipperListener(Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mFlipperListener:Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;

    return-void
.end method

.method public updateItemSelected(ILandroid/view/View;)V
    .registers 18

    move/from16 v0, p1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    if-eqz v2, :cond_16

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_39

    :cond_16
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/high16 v6, -0x4080

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->onDown(Landroid/view/MotionEvent;)Z

    :cond_2d
    :goto_2d
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mCenterView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mIsScrolling:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->notifyFlipperListener(Z)V

    return-void

    :cond_39
    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    if-nez v2, :cond_48

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setSelection(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->invalidate()V

    goto :goto_2d

    :cond_48
    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_2d

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setSelection(I)V

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->mSelectedItem:I

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->invalidate()V

    goto :goto_2d
.end method
