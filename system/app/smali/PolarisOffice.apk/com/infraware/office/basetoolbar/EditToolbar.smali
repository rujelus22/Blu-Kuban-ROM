.class public Lcom/infraware/office/basetoolbar/EditToolbar;
.super Landroid/widget/FrameLayout;
.source "EditToolbar.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarMsgType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;
    }
.end annotation


# instance fields
.field private final mAnimationDuration:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

.field private mCurrentPage:I

.field protected mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastTouchPoint:Landroid/graphics/PointF;

.field private mLineWidth:I

.field private mMoveOffset:F

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRemainderWidth:I

.field protected mToolBarData:[I

.field private mToolbarBtnWidth:I

.field private mToolbarLeft:I

.field private mToolbarName:Ljava/lang/String;

.field private mToolbarSpinLeft:Landroid/widget/ImageView;

.field private mToolbarSpinRight:Landroid/widget/ImageView;

.field private mToolbarView:Landroid/widget/LinearLayout;

.field private mTotalPage:I

.field private mTouchDownPoint:Landroid/graphics/PointF;

.field private mTouchSlopSquare:I

.field protected mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

.field private mbCommitText:Z

.field private mbDisabledToolbar:Ljava/lang/Boolean;

.field private mbDrag:Z

.field private mbLongPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 208
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    .line 43
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    .line 44
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    .line 45
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    .line 46
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 47
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 48
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    .line 49
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    .line 50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDisabledToolbar:Ljava/lang/Boolean;

    .line 52
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    .line 53
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    .line 54
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    .line 55
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    .line 56
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mRemainderWidth:I

    .line 58
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchSlopSquare:I

    .line 59
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    .line 60
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 61
    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarLeft:I

    .line 62
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    .line 63
    iput-boolean v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 64
    iput-boolean v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    .line 65
    iput-boolean v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbCommitText:Z

    .line 66
    new-instance v3, Lcom/infraware/office/basetoolbar/EditToolbar$1;

    invoke-direct {v3, p0}, Lcom/infraware/office/basetoolbar/EditToolbar$1;-><init>(Lcom/infraware/office/basetoolbar/EditToolbar;)V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 106
    new-instance v3, Lcom/infraware/office/basetoolbar/EditToolbar$2;

    invoke-direct {v3, p0}, Lcom/infraware/office/basetoolbar/EditToolbar$2;-><init>(Lcom/infraware/office/basetoolbar/EditToolbar;)V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 132
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 133
    new-instance v3, Lcom/infraware/office/basetoolbar/EditToolbar$3;

    invoke-direct {v3, p0}, Lcom/infraware/office/basetoolbar/EditToolbar$3;-><init>(Lcom/infraware/office/basetoolbar/EditToolbar;)V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAudioManager:Landroid/media/AudioManager;

    .line 151
    const/16 v3, 0x12c

    iput v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAnimationDuration:I

    move-object v3, p1

    .line 209
    check-cast v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 210
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    .line 211
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    const v4, 0x7f02038f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 212
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->addView(Landroid/view/View;)V

    .line 214
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030082

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 216
    .local v1, toolbarSpinView:Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 218
    const v3, 0x7f0c02f3

    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    .line 219
    const v3, 0x7f0c02f4

    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    .line 221
    invoke-virtual {p0, v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->setClickable(Z)V

    .line 223
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 224
    .local v2, touchSlop:I
    mul-int v3, v2, v2

    iput v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchSlopSquare:I

    .line 226
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    return-void
.end method

.method private AddLineImage()V
    .registers 5

    .prologue
    .line 348
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, imageView:Landroid/widget/ImageView;
    const v2, 0x7f020390

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 350
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 351
    .local v1, imgParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    return-void
.end method

.method public static CalculateCenterPos(III)I
    .registers 7
    .parameter "nWidth"
    .parameter "nPosX"
    .parameter "nSubWidth"

    .prologue
    .line 752
    add-int/lit8 v3, p0, -0x1

    if-gt p1, v3, :cond_6

    .line 753
    const/4 p1, 0x0

    .line 763
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 755
    .restart local p1
    :cond_6
    add-int v2, p1, p2

    .line 756
    .local v2, subToolbarRightPos:I
    add-int v1, p1, p0

    .line 758
    .local v1, parentRightPos:I
    sub-int v0, v2, v1

    .line 760
    .local v0, gap:I
    if-lez v0, :cond_5

    .line 763
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr p1, v3

    goto :goto_5
.end method

.method private GetTouchedToolbarBtn(FF)Lcom/infraware/office/basetoolbar/ToolbarBtn;
    .registers 12
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v8, 0x0

    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 442
    .local v1, location:[I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 444
    .local v2, rect:Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v4, v4

    if-lt v0, v4, :cond_12

    .line 451
    const/4 v4, 0x0

    :goto_11
    return-object v4

    .line 445
    :cond_12
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    check-cast v3, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 446
    .restart local v3       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    invoke-virtual {v3, v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getLocationOnScreen([I)V

    .line 447
    aget v4, v1, v8

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v6, v1, v8

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 448
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object v4, v3

    .line 449
    goto :goto_11

    .line 444
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private OnDefocusToolbarBtn()V
    .registers 4

    .prologue
    .line 614
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v1, :cond_16

    .line 615
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    .line 616
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 617
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 620
    :cond_16
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    if-eqz v1, :cond_30

    .line 621
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v0

    .line 622
    .local v0, nDocType:I
    const/16 v1, 0x14

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_30

    .line 623
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getScreenView()Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 625
    .end local v0           #nDocType:I
    :cond_30
    return-void
.end method

.method private OnTouchCancel(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 600
    iput-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 601
    iput-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    .line 602
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    .line 604
    return-void
.end method

.method private OnTouchDown(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 463
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 464
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 465
    const-string v1, "EditToolbar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnTouchUp isMenuOpen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_34
    return-void

    .line 470
    :cond_35
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 471
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 473
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->GetTouchedToolbarBtn(FF)Lcom/infraware/office/basetoolbar/ToolbarBtn;

    move-result-object v0

    .line 474
    .local v0, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-nez v1, :cond_85

    .line 475
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v1

    if-eq v1, v6, :cond_6a

    .line 476
    invoke-virtual {v0, v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 477
    :cond_6a
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 497
    :goto_6c
    iput-boolean v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 498
    iput-boolean v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    .line 499
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_34

    .line 480
    :cond_85
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_90

    .line 481
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 482
    iput-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 485
    :cond_90
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v1

    if-eq v1, v6, :cond_9d

    .line 486
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1, v4}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 488
    :cond_9d
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-ne v1, v0, :cond_a4

    .line 489
    iput-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    goto :goto_6c

    .line 491
    :cond_a4
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v1

    if-eq v1, v6, :cond_af

    .line 492
    invoke-virtual {v0, v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 493
    :cond_af
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    goto :goto_6c
.end method

.method private OnTouchMove(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    .line 504
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 505
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 506
    const-string v3, "EditToolbar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OnTouchUp isMenuOpen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_33
    :goto_33
    return-void

    .line 511
    :cond_34
    iget-boolean v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    if-nez v3, :cond_a0

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 513
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 514
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int v2, v3, v4

    .line 515
    .local v2, distance:I
    iget v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchSlopSquare:I

    if-le v2, v3, :cond_33

    .line 521
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    :cond_56
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_66

    iget v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    if-eqz v3, :cond_33

    :cond_66
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7a

    iget v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    iget v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_33

    .line 524
    :cond_7a
    iget-boolean v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    if-nez v3, :cond_33

    .line 527
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 528
    iput-boolean v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 529
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3, v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnMoveOffset(IZ)V

    goto :goto_33

    .line 518
    :cond_a0
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_56

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_56

    goto/16 :goto_33
.end method

.method private OnTouchUp(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter "event"

    .prologue
    const/16 v11, 0x12c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 534
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 535
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 536
    const-string v5, "EditToolbar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OnTouchUp isMenuOpen = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isMenuOpen()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    .line 538
    iput-boolean v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 539
    iput-boolean v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    .line 540
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :goto_41
    return-void

    .line 545
    :cond_42
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_76

    .line 546
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f1

    .line 547
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d2

    .line 548
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetCurrentPage(I)V

    .line 549
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v6, v8, v11}, Lcom/infraware/office/basetoolbar/EditToolbar;->createAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 560
    :cond_73
    :goto_73
    invoke-virtual {p0, v9, v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnMoveOffset(IZ)V

    .line 563
    :cond_76
    iget-boolean v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    if-nez v5, :cond_110

    .line 564
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v5, :cond_c7

    .line 565
    iget-boolean v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    if-nez v5, :cond_10c

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10c

    .line 566
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 567
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/MyApplication;

    .line 568
    .local v1, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v1}, Lcom/infraware/polarisoffice/MyApplication;->getSubToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v4

    .line 569
    .local v4, subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 571
    .local v2, subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {p0, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->getPageCountOfToolbarBtn(Lcom/infraware/office/basetoolbar/ToolbarBtn;)I

    move-result v0

    .line 572
    .local v0, buttonsPage:I
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    if-ne v5, v0, :cond_c7

    .line 574
    if-nez v2, :cond_fe

    .line 575
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickToolbar(I)V

    .line 576
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    .line 594
    .end local v0           #buttonsPage:I
    .end local v1           #myApp:Lcom/infraware/polarisoffice/MyApplication;
    .end local v2           #subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    .end local v4           #subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    :cond_c7
    :goto_c7
    iput-boolean v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    .line 595
    iput-boolean v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    .line 596
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_41

    .line 551
    :cond_d2
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_73

    .line 552
    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetCurrentPage(I)V

    .line 553
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {p0, v6, v8, v11}, Lcom/infraware/office/basetoolbar/EditToolbar;->createAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_73

    .line 557
    :cond_f1
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    invoke-direct {p0, v6, v8, v11}, Lcom/infraware/office/basetoolbar/EditToolbar;->createAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 579
    .restart local v0       #buttonsPage:I
    .restart local v1       #myApp:Lcom/infraware/polarisoffice/MyApplication;
    .restart local v2       #subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    .restart local v4       #subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    :cond_fe
    invoke-virtual {p0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCreateSubToolBar(Lcom/infraware/office/basetoolbar/SubToolbarItem;)Lcom/infraware/office/basetoolbar/SubToolbar;

    move-result-object v3

    .line 580
    .local v3, subToolbar:Lcom/infraware/office/basetoolbar/SubToolbar;
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    goto :goto_c7

    .line 585
    .end local v0           #buttonsPage:I
    .end local v1           #myApp:Lcom/infraware/polarisoffice/MyApplication;
    .end local v2           #subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    .end local v3           #subToolbar:Lcom/infraware/office/basetoolbar/SubToolbar;
    .end local v4           #subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    :cond_10c
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    goto :goto_c7

    .line 589
    :cond_110
    iget-object v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v5, :cond_c7

    .line 590
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    goto :goto_c7
.end method

.method private SetCurrentPage(I)V
    .registers 6
    .parameter "currentPage"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 255
    iput p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    .line 256
    iget v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    if-nez v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :goto_12
    return-void

    .line 260
    :cond_13
    iget v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    iget v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_26

    .line 261
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 265
    :cond_26
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12
.end method

.method private SetToolbarBtn()V
    .registers 16

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 317
    .local v2, context:Landroid/content/Context;
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 318
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/infraware/polarisoffice/MyApplication;

    .line 319
    .local v5, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v5}, Lcom/infraware/polarisoffice/MyApplication;->getToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v10

    .line 320
    .local v10, toolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/ToolbarItem;>;"
    const/4 v0, 0x0

    .line 321
    .local v0, btnParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v11, v11

    int-to-double v11, v11

    iget v13, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    .line 324
    .local v6, nButtonCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move-object v1, v0

    .end local v0           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .local v1, btnParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_25
    :try_start_25
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lt v4, v11, :cond_34

    .line 339
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->AddLineImage()V

    move-object v0, v1

    .line 345
    .end local v1           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_33
    return-void

    .line 325
    .end local v0           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v1       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_34
    if-eqz v4, :cond_39

    .line 326
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->AddLineImage()V

    .line 328
    :cond_39
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 329
    .local v8, toolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v9, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-direct {v9, v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;-><init>(Landroid/content/Context;)V

    .line 330
    .local v9, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    invoke-virtual {v9, v8}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setInit(Lcom/infraware/office/basetoolbar/ToolbarItem;)V

    .line 331
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v11}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 332
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v9, v11}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 333
    rem-int v11, v4, v6

    iget v12, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mRemainderWidth:I

    if-ge v11, v12, :cond_77

    .line 334
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    invoke-direct {v0, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_6e} :catch_80

    .line 337
    .end local v1           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_6e
    :try_start_6e
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_6e .. :try_end_73} :catch_96

    .line 324
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v1       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_25

    .line 336
    :cond_77
    :try_start_77
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    const/4 v12, -0x1

    invoke-direct {v0, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    :try_end_7f
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_7f} :catch_80

    .end local v1           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_6e

    .line 340
    .end local v0           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #toolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    .end local v9           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    .restart local v1       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    :catch_80
    move-exception v3

    move-object v0, v1

    .line 341
    .end local v1           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .local v3, e:Ljava/lang/NullPointerException;
    :goto_82
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    iget-object v12, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    invoke-virtual {p0, v7, v11, v12}, Lcom/infraware/office/basetoolbar/EditToolbar;->setPreferencesData(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    .line 342
    iget-object v11, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    iget-object v12, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    iget-object v13, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    invoke-virtual {p0, v11, v12, v13}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    .line 343
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarBtn()V

    goto :goto_33

    .line 340
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v8       #toolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    .restart local v9       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :catch_96
    move-exception v3

    goto :goto_82
.end method

.method private SetToolbarData()V
    .registers 9

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 298
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_75

    .line 299
    const/4 v4, 0x3

    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    .line 303
    :goto_1d
    const/4 v4, 0x1

    const v5, 0x3fab851f

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    .line 304
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v4, v4

    int-to-double v4, v4

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 305
    .local v1, nButtonCount:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 306
    .local v2, nToolbarWidth:I
    div-int v4, v2, v1

    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    .line 307
    rem-int v4, v2, v1

    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mRemainderWidth:I

    .line 308
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetCurrentPage(I)V

    .line 310
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 311
    .local v3, toolbarParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 312
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    return-void

    .line 301
    .end local v1           #nButtonCount:I
    .end local v2           #nToolbarWidth:I
    .end local v3           #toolbarParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    const/4 v4, 0x2

    iput v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    goto :goto_1d
.end method

.method static synthetic access$0(Lcom/infraware/office/basetoolbar/EditToolbar;)Z
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/office/basetoolbar/EditToolbar;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/office/basetoolbar/EditToolbar;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/office/basetoolbar/EditToolbar;)V
    .registers 1
    .parameter

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/office/basetoolbar/EditToolbar;)I
    .registers 2
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/office/basetoolbar/EditToolbar;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetCurrentPage(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/office/basetoolbar/EditToolbar;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/office/basetoolbar/EditToolbar;FFI)Landroid/view/animation/Animation;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/basetoolbar/EditToolbar;->createAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/office/basetoolbar/EditToolbar;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z

    return-void
.end method

.method private createAnimation(FFI)Landroid/view/animation/Animation;
    .registers 13
    .parameter "fromXValue"
    .parameter "toXValue"
    .parameter "duration"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 607
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 609
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 610
    return-object v0
.end method


# virtual methods
.method public GetHeight()I
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public OnChangeToolbarBtn(ILjava/lang/Boolean;)V
    .registers 4
    .parameter "toolbarBtnId"
    .parameter "bChangeImage"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 629
    .local v0, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    if-eqz v0, :cond_b

    .line 630
    invoke-virtual {v0, p2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setChangeImage(Ljava/lang/Boolean;)V

    .line 631
    :cond_b
    return-void
.end method

.method public OnClickSubToolbar(II)V
    .registers 7
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 787
    sparse-switch p1, :sswitch_data_88

    .line 837
    :goto_3
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 838
    return-void

    .line 792
    :sswitch_7
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Zoom(I)V

    goto :goto_3

    .line 795
    :sswitch_d
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_FontSize(I)V

    goto :goto_3

    .line 798
    :sswitch_13
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_FontStyle(I)V

    goto :goto_3

    .line 801
    :sswitch_19
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_DocumentEdit(I)V

    goto :goto_3

    .line 805
    :sswitch_1f
    :try_start_1f
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getToolbarId()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v3

    invoke-interface {v1, p2, v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_FontColor(III)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_38} :catch_39

    goto :goto_3

    .line 806
    :catch_39
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 809
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_3e
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Alignment(I)V

    goto :goto_3

    .line 812
    :sswitch_44
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Bullet(I)V

    goto :goto_3

    .line 815
    :sswitch_4a
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Numbering(I)V

    goto :goto_3

    .line 818
    :sswitch_50
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_LineSpacing(I)V

    goto :goto_3

    .line 822
    :sswitch_56
    :try_start_56
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getToolbarId()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v3

    invoke-interface {v1, p2, v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_BackgroundColor(III)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6f} :catch_70

    goto :goto_3

    .line 823
    :catch_70
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 826
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_75
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Border(I)V

    goto :goto_3

    .line 829
    :sswitch_7b
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Cell(I)V

    goto :goto_3

    .line 832
    :sswitch_81
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_UndoRedo(I)V

    goto/16 :goto_3

    .line 787
    :sswitch_data_88
    .sparse-switch
        0x7f0c0212 -> :sswitch_3e
        0x7f0c0217 -> :sswitch_56
        0x7f0c0230 -> :sswitch_75
        0x7f0c0252 -> :sswitch_44
        0x7f0c0259 -> :sswitch_7b
        0x7f0c0268 -> :sswitch_19
        0x7f0c026e -> :sswitch_1f
        0x7f0c0287 -> :sswitch_d
        0x7f0c028e -> :sswitch_13
        0x7f0c02a2 -> :sswitch_50
        0x7f0c02a5 -> :sswitch_4a
        0x7f0c02e0 -> :sswitch_81
        0x7f0c02e3 -> :sswitch_7
        0x7f0c02e8 -> :sswitch_7
        0x7f0c02ea -> :sswitch_7
        0x7f0c02eb -> :sswitch_7
    .end sparse-switch
.end method

.method protected OnClickToolbar(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 777
    const/16 v0, 0x15

    if-ne p1, v0, :cond_a

    .line 778
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Save(I)V

    .line 783
    :cond_9
    :goto_9
    return-void

    .line 779
    :cond_a
    const/16 v0, 0x28

    if-ne p1, v0, :cond_9

    .line 780
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    const v1, 0x7f0c02df

    invoke-interface {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Slide(I)V

    goto :goto_9
.end method

.method public OnCloseSubToolbar()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V

    .line 768
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    .line 769
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 771
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 773
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14
.end method

.method public OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V
    .registers 7
    .parameter "subtoolbar"
    .parameter "toolbarBtnId"

    .prologue
    .line 673
    const/4 v1, -0x1

    .line 674
    .local v1, selectBtnId:I
    const/4 v0, 0x0

    check-cast v0, [I

    .line 675
    .local v0, btnStates:[I
    packed-switch p2, :pswitch_data_72

    .line 718
    :goto_7
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    .line 719
    :cond_a
    :goto_a
    return-void

    .line 677
    :pswitch_b
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdFontSizeUI()I

    move-result v1

    .line 678
    goto :goto_7

    .line 680
    :pswitch_12
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdFontStyleUI()[I

    move-result-object v0

    .line 681
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitMultiSelectedSubToolbarBtn([I)V

    goto :goto_a

    .line 684
    :pswitch_1c
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdEditUI(Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 685
    if-eqz v0, :cond_a

    .line 686
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_a

    .line 689
    :pswitch_2d
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdEditUI(Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 690
    if-eqz v0, :cond_a

    .line 691
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_a

    .line 695
    :pswitch_3e
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdFontColorUI()I

    move-result v1

    .line 696
    goto :goto_7

    .line 698
    :pswitch_45
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdAlignmentUI()I

    move-result v1

    .line 699
    goto :goto_7

    .line 701
    :pswitch_4c
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdBulletUI()I

    move-result v1

    .line 702
    goto :goto_7

    .line 704
    :pswitch_53
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdNumberingUI()I

    move-result v1

    .line 705
    goto :goto_7

    .line 707
    :pswitch_5a
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdCellUI()[I

    move-result-object v0

    .line 708
    if-eqz v0, :cond_a

    .line 709
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_a

    .line 712
    :pswitch_66
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdUndoRedoUI()[I

    move-result-object v0

    .line 713
    if-eqz v0, :cond_a

    .line 714
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_a

    .line 675
    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_b
        :pswitch_12
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
        :pswitch_3e
        :pswitch_45
        :pswitch_4c
        :pswitch_53
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5a
        :pswitch_66
    .end packed-switch
.end method

.method public OnCreateSubToolBar(Lcom/infraware/office/basetoolbar/SubToolbarItem;)Lcom/infraware/office/basetoolbar/SubToolbar;
    .registers 15
    .parameter "subToolBarItem"

    .prologue
    .line 726
    new-instance v6, Lcom/infraware/office/basetoolbar/SubToolbar;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/infraware/office/basetoolbar/SubToolbar;-><init>(Landroid/content/Context;)V

    .line 727
    .local v6, subToolBar:Lcom/infraware/office/basetoolbar/SubToolbar;
    const/high16 v9, 0x4080

    invoke-virtual {p0, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v9

    float-to-int v1, v9

    .line 728
    .local v1, nButtonMargin:I
    const/high16 v9, 0x4250

    invoke-virtual {p0, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v9

    float-to-int v2, v9

    .line 729
    .local v2, nButtonWidth:I
    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarButtonCnt()I

    move-result v9

    mul-int/2addr v9, v2

    add-int v5, v9, v1

    .line 730
    .local v5, nWidth:I
    const/4 v3, 0x0

    .line 731
    .local v3, nHeight:I
    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8a

    .line 732
    const/high16 v9, 0x4264

    invoke-virtual {p0, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v9

    const/high16 v10, 0x4230

    invoke-virtual {p0, v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v10

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v3, v9

    .line 736
    :goto_3c
    invoke-virtual {v6, p0, p1}, Lcom/infraware/office/basetoolbar/SubToolbar;->SetInit(Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;Lcom/infraware/office/basetoolbar/SubToolbarItem;)Landroid/view/View;

    move-result-object v7

    .line 737
    .local v7, subToolBarView:Landroid/view/View;
    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, v7, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 739
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 740
    .local v0, location:[I
    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubtoolbarID()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 741
    .local v8, toolbarBtn:Landroid/view/View;
    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 742
    const/4 v9, 0x0

    aget v9, v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {v6, v9, v10}, Lcom/infraware/office/basetoolbar/SubToolbar;->SetTipPos(II)V

    .line 744
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-static {v9, v10, v5}, Lcom/infraware/office/basetoolbar/EditToolbar;->CalculateCenterPos(III)I

    move-result v4

    .line 745
    .local v4, nPosX:I
    iget-object v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v10, 0x33

    const/4 v11, 0x1

    aget v11, v0, v11

    sub-int/2addr v11, v3

    const v12, 0x40b570a4

    invoke-virtual {p0, v12}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v11, v12

    invoke-virtual {v9, v8, v10, v4, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 746
    iget-object v9, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->update()V

    .line 748
    return-object v6

    .line 734
    .end local v0           #location:[I
    .end local v4           #nPosX:I
    .end local v7           #subToolBarView:Landroid/view/View;
    .end local v8           #toolbarBtn:Landroid/view/View;
    :cond_8a
    const/high16 v9, 0x4264

    invoke-virtual {p0, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->dipToPx(F)F

    move-result v9

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    goto :goto_3c
.end method

.method public OnDisabledToolbar(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "bDisabled"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDisabledToolbar:Ljava/lang/Boolean;

    .line 660
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDisabledToolbar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v2, v2

    if-lt v0, v2, :cond_12

    .line 670
    .end local v0           #i:I
    .end local v1           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :goto_11
    return-void

    .line 663
    .restart local v0       #i:I
    .restart local v1       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :cond_12
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    check-cast v1, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 664
    .restart local v1       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 668
    .end local v0           #i:I
    .end local v1           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :cond_23
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto :goto_11
.end method

.method public OnFocusableToolbarBtn(Z)V
    .registers 6
    .parameter "bfocus"

    .prologue
    .line 842
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    if-nez v3, :cond_5

    .line 852
    :cond_4
    return-void

    .line 844
    :cond_5
    const/4 v2, -0x1

    .line 845
    .local v2, toolbarBtnId:I
    const/4 v1, 0x0

    .line 847
    .local v1, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 848
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    aget v2, v3, v0

    .line 849
    invoke-virtual {p0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    check-cast v1, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 850
    .restart local v1       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    invoke-virtual {v1, p1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setFocusable(Z)V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public OnMoveOffset(IZ)V
    .registers 8
    .parameter "offset"
    .parameter "touchEvent"

    .prologue
    .line 433
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z

    if-nez v0, :cond_14

    .line 434
    :cond_6
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLineWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I

    mul-int/2addr v0, v1

    neg-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarLeft:I

    .line 435
    :cond_14
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarLeft:I

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarLeft:I

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 436
    int-to-float v0, p1

    iput v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mMoveOffset:F

    .line 437
    return-void
.end method

.method public OnUpdateToolbar()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 634
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbDisabledToolbar:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 656
    :cond_a
    return-void

    .line 635
    :cond_b
    iget-boolean v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbCommitText:Z

    if-eqz v4, :cond_a

    .line 637
    const/4 v3, -0x1

    .line 638
    .local v3, toolbarBtnId:I
    const/4 v2, 0x0

    .line 639
    .local v2, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 641
    .local v0, bEnable:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 642
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v4, v4

    if-ge v1, v4, :cond_a

    .line 643
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    aget v3, v4, v1

    .line 644
    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    check-cast v2, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 646
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    if-nez v1, :cond_40

    .line 647
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 651
    :goto_34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 652
    invoke-virtual {v2, v7}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 642
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 649
    :cond_40
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    .line 654
    :cond_4b
    invoke-virtual {v2, v6}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    goto :goto_3d
.end method

.method public SetCommitText(I)V
    .registers 3
    .parameter "commit"

    .prologue
    .line 386
    if-nez p1, :cond_6

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbCommitText:Z

    .line 390
    :goto_5
    return-void

    .line 389
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mbCommitText:Z

    goto :goto_5
.end method

.method public SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V
    .registers 8
    .parameter "listener"
    .parameter "toolbarName"
    .parameter "toolBarData"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    .line 284
    iput-object p2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    .line 287
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_22

    .line 289
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setPreferencesData(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    .line 292
    :cond_22
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarData()V

    .line 293
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarBtn()V

    .line 294
    return-void
.end method

.method public SetToolbarBtnOrder()V
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 356
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 357
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarBtn()V

    .line 358
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 359
    return-void
.end method

.method public SetToolbarOrientation()V
    .registers 11

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 363
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarData()V

    .line 366
    :try_start_6
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v6, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTotalPage:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 367
    .local v3, nButtonCount:I
    const/4 v5, 0x0

    .line 368
    .local v5, toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    array-length v6, v6

    if-lt v2, v6, :cond_1b

    .line 383
    .end local v2           #i:I
    .end local v3           #nButtonCount:I
    .end local v5           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :goto_1a
    return-void

    .line 369
    .restart local v2       #i:I
    .restart local v3       #nButtonCount:I
    .restart local v5       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :cond_1b
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    check-cast v5, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 370
    .restart local v5       #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 371
    .local v0, btnParams:Landroid/view/ViewGroup$LayoutParams;
    rem-int v6, v2, v3

    iget v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mRemainderWidth:I

    if-ge v6, v7, :cond_3b

    .line 372
    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    :goto_35
    invoke-virtual {v5, v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 374
    :cond_3b
    iget v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarBtnWidth:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_3f} :catch_40

    goto :goto_35

    .line 377
    .end local v0           #btnParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #i:I
    .end local v3           #nButtonCount:I
    .end local v5           #toolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :catch_40
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 379
    .local v4, pref:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    invoke-virtual {p0, v4, v6, v7}, Lcom/infraware/office/basetoolbar/EditToolbar;->setPreferencesData(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    .line 380
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    iget-object v8, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    invoke-virtual {p0, v6, v7, v8}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    .line 381
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarOrientation()V

    goto :goto_1a
.end method

.method public dipToPx(F)F
    .registers 4
    .parameter "value"

    .prologue
    .line 722
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected getPageCountOfToolbarBtn(Lcom/infraware/office/basetoolbar/ToolbarBtn;)I
    .registers 9
    .parameter "btn"

    .prologue
    .line 455
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getTop()I

    move-result v4

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBottom()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 456
    .local v0, btnRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 457
    .local v1, display:Landroid/view/Display;
    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int v2, v3, v4

    .line 459
    .local v2, page:I
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 409
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 396
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 399
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 402
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 405
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 394
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_10
        :pswitch_18
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 429
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 416
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 419
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 422
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 425
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 414
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_10
        :pswitch_18
    .end packed-switch
.end method

.method protected playKeyClickSoundEffect()V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 252
    :cond_a
    return-void
.end method

.method protected setPreferencesData(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V
    .registers 8
    .parameter "pref"
    .parameter "toolbarName"
    .parameter "toolBarData"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, p3

    if-lt v1, v2, :cond_c

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    return-void

    .line 277
    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget v3, p3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public toolbarFilnalize()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    .line 231
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;

    .line 232
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinLeft:Landroid/widget/ImageView;

    .line 233
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarSpinRight:Landroid/widget/ImageView;

    .line 234
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 235
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 236
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarName:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mToolBarData:[I

    .line 239
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchDownPoint:Landroid/graphics/PointF;

    .line 240
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 241
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 242
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 244
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mBaseEditorActivity:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 245
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mHandler:Landroid/os/Handler;

    .line 246
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/EditToolbar;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    return-void
.end method
