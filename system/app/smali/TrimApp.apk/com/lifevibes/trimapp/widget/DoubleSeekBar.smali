.class public Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
.super Landroid/view/ViewGroup;
.source "DoubleSeekBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;,
        Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;
    }
.end annotation


# instance fields
.field private HANDLE_HEIGHT:I

.field private HANDLE_LEFT_X:I

.field private HANDLE_MARGIN_T:I

.field private HANDLE_PADDING:I

.field private HANDLE_PADDING_SPACE:I

.field private HANDLE_RIGHT_X:I

.field private HANDLE_USER_HEIGHT:I

.field private HANDLE_USER_MARGIN_T:I

.field private HANDLE_USER_WIDTH:I

.field private HANDLE_USER_WIDTH_HALF:I

.field private HANDLE_WIDTH:I

.field private HANDLE_WIDTH_HALF:I

.field private IMAGE_CONTAINER_EMPTY:I

.field private IMAGE_CONTAINER_HEIGHT:I

.field private IMAGE_CONTAINER_MARGIN_LR:I

.field private IMAGE_CONTAINER_MARGIN_T:I

.field private IMAGE_CONTAINER_PADDING:I

.field private IMAGE_HEIGHT:I

.field private IMAGE_WIDTH:I

.field public LAYOUT_HEIGHT:I

.field private TIME_HEIGHT:I

.field private TIME_MARGIN_LR:I

.field private TIME_MARGIN_T:I

.field private TIME_WIDTH:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPositionX:I

.field private mEndTime:I

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandleGap:I

.field private mInLongPress:Z

.field private mIsCreated:Z

.field private mIsLandscape:Z

.field private mIvLeftHandle:Landroid/widget/ImageView;

.field private mIvRightHandle:Landroid/widget/ImageView;

.field private mIvUserHandle:Landroid/widget/ImageView;

.field private mLayoutLeft:I

.field private mLayoutRight:I

.field private mLeftFrameLayout:Landroid/widget/FrameLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

.field private mLongDuration:I

.field private mNumberOfImages:I

.field private mPressedHandle:I

.field private mRestoreLeftTimeMs:I

.field private mRestoreRightTimeMs:I

.field private mRestoreUserTimeMs:I

.field private mRightFrameLayout:Landroid/widget/FrameLayout;

.field private mSaveEndTime:I

.field private mSaveLayoutLeft:I

.field private mSaveStartTime:I

.field private mSideHandleEnabled:Z

.field private mStartTime:I

.field private mTvLeftTime:Landroid/widget/TextView;

.field private mTvPlayTime:Landroid/widget/TextView;

.field private mTvRightTime:Landroid/widget/TextView;

.field private mUserHandleMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    .line 163
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreRightTimeMs:I

    .line 164
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreUserTimeMs:I

    .line 181
    iput-object p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    .line 182
    invoke-direct {p0, p2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setupViewUIAttrs(Landroid/util/AttributeSet;)V

    .line 183
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->initDoubleSeekBar()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/lifevibes/trimapp/widget/DoubleSeekBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->startLongPress()V

    return-void
.end method

.method private endLongPress(Z)V
    .registers 7
    .parameter "makeThumbnail"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 637
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-nez v1, :cond_8

    .line 668
    :cond_7
    :goto_7
    return-void

    .line 640
    :cond_8
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v0

    .line 643
    .local v0, timeMillis:I
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 644
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 646
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v1, v2, :cond_3b

    .line 647
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveLayoutLeft:I

    invoke-direct {p0, v4, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    .line 655
    :goto_1f
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-direct {p0, v1, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveSideHandleTo(II)V

    .line 658
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    .line 659
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 662
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v1, :cond_34

    .line 663
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-interface {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onLongReleased(I)V

    .line 666
    :cond_34
    invoke-direct {p0, v3, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 667
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    goto :goto_7

    .line 648
    :cond_3b
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v1, v4, :cond_7

    .line 649
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveLayoutLeft:I

    invoke-direct {p0, v2, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    goto :goto_1f
.end method

.method private getValidLeftPosition(IIII)I
    .registers 9
    .parameter "left"
    .parameter "right"
    .parameter "handleLeft"
    .parameter "handleID"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 697
    packed-switch p4, :pswitch_data_6a

    .line 739
    :cond_5
    :goto_5
    return p3

    .line 703
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v1

    .line 706
    .local v1, rightHandlePos:I
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    add-int/2addr v2, p1

    if-ge p3, v2, :cond_14

    .line 707
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    add-int p3, p1, v2

    goto :goto_5

    .line 708
    :cond_14
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING_SPACE:I

    sub-int/2addr v2, v3

    if-le p3, v2, :cond_5

    .line 709
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING_SPACE:I

    sub-int p3, v2, v3

    goto :goto_5

    .line 717
    .end local v1           #rightHandlePos:I
    :pswitch_2c
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v0

    .line 720
    .local v0, leftHandlePos:I
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_RIGHT_X:I

    sub-int v2, p2, v2

    if-le p3, v2, :cond_3b

    .line 721
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_RIGHT_X:I

    sub-int p3, p2, v2

    goto :goto_5

    .line 722
    :cond_3b
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING_SPACE:I

    add-int/2addr v2, v3

    if-ge p3, v2, :cond_5

    .line 723
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING_SPACE:I

    add-int p3, v2, v3

    goto :goto_5

    .line 727
    .end local v0           #leftHandlePos:I
    :pswitch_4b
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v0

    .line 728
    .restart local v0       #leftHandlePos:I
    invoke-virtual {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v1

    .line 729
    .restart local v1       #rightHandlePos:I
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int v2, v0, v2

    if-ge p3, v2, :cond_5e

    .line 730
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int p3, v0, v2

    goto :goto_5

    .line 731
    :cond_5e
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int v2, v1, v2

    if-le p3, v2, :cond_5

    .line 732
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int p3, v1, v2

    goto :goto_5

    .line 697
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2c
        :pswitch_4b
    .end packed-switch
.end method

.method private layoutHandles(IIII)V
    .registers 15
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1014
    iget-boolean v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    if-eqz v7, :cond_a9

    .line 1016
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 1018
    .local v2, leftHandleL:I
    move v1, v2

    .line 1019
    .local v1, l:I
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    .line 1020
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    add-int v1, v2, v7

    .line 1021
    const/4 v7, 0x0

    iput v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 1022
    const/4 v7, 0x1

    invoke-direct {p0, p1, p3, v1, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getValidLeftPosition(IIII)I

    move-result v1

    .line 1024
    :cond_1c
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int v3, v1, v7

    .line 1025
    .local v3, r:I
    if-eq v1, v2, :cond_38

    .line 1026
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    .line 1027
    .local v5, t:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 1028
    .local v0, b:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1029
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 1032
    .end local v0           #b:I
    .end local v5           #t:I
    :cond_38
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 1033
    .local v4, rightHandleL:I
    move v1, v4

    .line 1034
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_50

    .line 1035
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    add-int v1, v4, v7

    .line 1036
    const/4 v7, 0x0

    iput v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 1037
    const/4 v7, 0x2

    invoke-direct {p0, p1, p3, v1, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getValidLeftPosition(IIII)I

    move-result v1

    .line 1039
    :cond_50
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int v3, v1, v7

    .line 1040
    if-eq v1, v4, :cond_6c

    .line 1041
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    .line 1042
    .restart local v5       #t:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 1043
    .restart local v0       #b:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1044
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 1047
    .end local v0           #b:I
    .end local v5           #t:I
    :cond_6c
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_a5

    .line 1048
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    .line 1049
    .local v6, userHandleL:I
    move v1, v6

    .line 1050
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_84

    .line 1051
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    add-int v1, v6, v7

    .line 1052
    const/4 v7, 0x0

    iput v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 1054
    :cond_84
    const/4 v7, 0x3

    invoke-direct {p0, p1, p3, v1, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getValidLeftPosition(IIII)I

    move-result v1

    .line 1055
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH:I

    add-int v3, v1, v7

    .line 1056
    if-eq v1, v6, :cond_a5

    .line 1057
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    .line 1058
    .restart local v5       #t:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 1059
    .restart local v0       #b:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1060
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 1064
    .end local v0           #b:I
    .end local v5           #t:I
    .end local v6           #userHandleL:I
    :cond_a5
    invoke-direct {p0, p1, p3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->layoutTransparent(II)V

    .line 1092
    .end local v2           #leftHandleL:I
    .end local v4           #rightHandleL:I
    :goto_a8
    return-void

    .line 1070
    .end local v1           #l:I
    .end local v3           #r:I
    :cond_a9
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    add-int v1, p1, v7

    .line 1071
    .restart local v1       #l:I
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int v3, v1, v7

    .line 1072
    .restart local v3       #r:I
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_MARGIN_T:I

    add-int v5, p2, v7

    .line 1073
    .restart local v5       #t:I
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_HEIGHT:I

    add-int v0, v5, v7

    .line 1074
    .restart local v0       #b:I
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1076
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_RIGHT_X:I

    sub-int v1, p3, v7

    .line 1077
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int v3, v1, v7

    .line 1078
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1080
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    add-int/2addr v7, p1

    iget v8, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int v1, v7, v8

    .line 1081
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH:I

    add-int v3, v1, v7

    .line 1082
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_MARGIN_T:I

    add-int v5, p2, v7

    .line 1083
    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_HEIGHT:I

    add-int v0, v5, v7

    .line 1084
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v5, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1087
    iget-object v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    iget v9, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    .line 1090
    iput p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutLeft:I

    .line 1091
    iput p3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutRight:I

    goto :goto_a8
.end method

.method private layoutImageContainer(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1002
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    add-int v1, p1, v4

    .line 1003
    .local v1, l:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    sub-int v2, p3, v4

    .line 1004
    .local v2, r:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_T:I

    add-int v3, p2, v4

    .line 1005
    .local v3, t:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_HEIGHT:I

    add-int v0, v3, v4

    .line 1006
    .local v0, b:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1008
    invoke-direct {p0, v3, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->layoutLinearHorizontal(II)V

    .line 1009
    return-void
.end method

.method private layoutLinearHorizontal(II)V
    .registers 11
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1112
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_PADDING:I

    .line 1114
    .local v1, childLeft:I
    sub-int v4, p2, p1

    .line 1116
    .local v4, height:I
    iget-object v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 1118
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b
    if-ge v5, v3, :cond_35

    .line 1119
    iget-object v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1121
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 1122
    add-int/lit8 v1, v1, 0x0

    .line 1118
    :cond_17
    :goto_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1123
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_17

    .line 1124
    iget v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_HEIGHT:I

    sub-int v6, v4, v6

    div-int/lit8 v2, v6, 0x2

    .line 1125
    .local v2, childTop:I
    iget v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_WIDTH:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_HEIGHT:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1126
    iget v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_WIDTH:I

    add-int/2addr v1, v6

    goto :goto_17

    .line 1129
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childTop:I
    :cond_35
    return-void
.end method

.method private layoutTimeText(IIII)V
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 954
    sget v4, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_67

    .line 956
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    add-int v1, p1, v4

    .line 957
    .local v1, l:I
    move v2, p3

    .line 958
    .local v2, r:I
    iget-boolean v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsLandscape:Z

    if-eqz v4, :cond_4d

    .line 959
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    div-int/lit8 v4, v4, 0x2

    add-int v3, p2, v4

    .line 960
    .local v3, t:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    .line 965
    .local v0, b:I
    :goto_1a
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 968
    iget-boolean v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsLandscape:Z

    if-eqz v4, :cond_56

    .line 969
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    add-int v1, p1, v4

    .line 970
    move v2, p3

    .line 971
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 972
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    .line 979
    :goto_35
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 990
    :goto_3a
    move v1, p1

    .line 991
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    sub-int v2, p3, v4

    .line 992
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    add-int v3, p2, v4

    .line 993
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    .line 995
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 996
    return-void

    .line 962
    .end local v0           #b:I
    .end local v3           #t:I
    :cond_4d
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    add-int v3, p2, v4

    .line 963
    .restart local v3       #t:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    .restart local v0       #b:I
    goto :goto_1a

    .line 974
    :cond_56
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_WIDTH:I

    add-int v1, v4, v5

    .line 975
    move v2, p3

    .line 976
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    add-int v3, p2, v4

    .line 977
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    goto :goto_35

    .line 982
    .end local v0           #b:I
    .end local v1           #l:I
    .end local v2           #r:I
    .end local v3           #t:I
    :cond_67
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    add-int v1, p1, v4

    .line 983
    .restart local v1       #l:I
    move v2, p3

    .line 984
    .restart local v2       #r:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    add-int v3, p2, v4

    .line 985
    .restart local v3       #t:I
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    add-int v0, v3, v4

    .line 986
    .restart local v0       #b:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_3a
.end method

.method private layoutTransparent(II)V
    .registers 9
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1096
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    .line 1097
    .local v3, t:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    .line 1100
    .local v0, b:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    .line 1101
    .local v1, l:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    add-int v2, v4, v5

    .line 1102
    .local v2, r:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1105
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    sub-int v1, v4, v5

    .line 1106
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    .line 1107
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1108
    return-void
.end method

.method private moveSideHandleTo(II)V
    .registers 9
    .parameter "handleID"
    .parameter "timeMillis"

    .prologue
    .line 673
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    if-ge p2, v2, :cond_27

    .line 674
    iget p2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 680
    :cond_6
    :goto_6
    int-to-long v2, p2

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 682
    .local v1, position:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2e

    .line 683
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    add-int v0, v1, v2

    .line 690
    .local v0, handleLeft:I
    :goto_1b
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutLeft:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutRight:I

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getValidLeftPosition(IIII)I

    move-result v0

    .line 691
    invoke-direct {p0, p1, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    .line 692
    .end local v0           #handleLeft:I
    :cond_26
    return-void

    .line 675
    .end local v1           #position:I
    :cond_27
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    if-le p2, v2, :cond_6

    .line 676
    iget p2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    goto :goto_6

    .line 684
    .restart local v1       #position:I
    :cond_2e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_26

    .line 685
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    sub-int v0, v2, v3

    .restart local v0       #handleLeft:I
    goto :goto_1b
.end method

.method private onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 570
    const/4 v0, 0x3

    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 572
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v0, :cond_c

    .line 573
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    invoke-interface {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onStartTrackingTouch()V

    .line 575
    :cond_c
    return-void
.end method

.method private onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 579
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v0, :cond_c

    .line 580
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    invoke-interface {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onStopTrackingTouch()V

    .line 582
    :cond_c
    return-void
.end method

.method private restoreHandleState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 557
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    if-le v0, v2, :cond_1f

    .line 558
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    invoke-direct {p0, v3, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveSideHandleTo(II)V

    .line 559
    const/4 v0, 0x2

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreRightTimeMs:I

    invoke-direct {p0, v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveSideHandleTo(II)V

    .line 560
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreUserTimeMs:I

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveUserHandleTo(I)V

    .line 562
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    invoke-virtual {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    invoke-interface {v0, v3, v1, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onHandleChanged(IIZ)V

    .line 564
    :cond_1f
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    .line 565
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreRightTimeMs:I

    .line 566
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreUserTimeMs:I

    .line 567
    return-void
.end method

.method private setHandleLayout(II)V
    .registers 8
    .parameter "handleID"
    .parameter "left"

    .prologue
    .line 831
    packed-switch p1, :pswitch_data_72

    .line 846
    :goto_3
    return-void

    .line 833
    :pswitch_4
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 834
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutLeft:I

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3

    .line 837
    :pswitch_2f
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 838
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutRight:I

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3

    .line 841
    :pswitch_5d
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_3

    .line 831
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2f
        :pswitch_5d
    .end packed-switch
.end method

.method private setupUIComponents()V
    .registers 10

    .prologue
    const/high16 v8, -0x100

    const v7, 0x3e4ccccd

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    const/4 v4, 0x1

    .line 854
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_33

    .line 855
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 856
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 857
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 858
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 859
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 860
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 863
    :cond_33
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 864
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    if-nez v1, :cond_66

    .line 865
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    .line 866
    sget v1, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5c

    .line 867
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 869
    :cond_5c
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v5, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 870
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 873
    :cond_66
    sget v1, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_96

    .line 874
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    if-nez v1, :cond_96

    .line 875
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    .line 876
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v5, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 878
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 882
    :cond_96
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    if-nez v1, :cond_b6

    .line 883
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    .line 884
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v5, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 885
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 886
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 889
    :cond_b6
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_d8

    .line 890
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    .line 891
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 892
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLeftFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 895
    :cond_d8
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_fa

    .line 896
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    .line 897
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 898
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRightFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 901
    :cond_fa
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    if-nez v1, :cond_128

    .line 902
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    .line 903
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 904
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 905
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 906
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 907
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 910
    :cond_128
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    if-nez v1, :cond_164

    .line 911
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    .line 912
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 913
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 915
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 917
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 918
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 919
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 922
    :cond_164
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    if-nez v1, :cond_1a1

    .line 923
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    .line 924
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 925
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 926
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 927
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 928
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 929
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 930
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 931
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addView(Landroid/view/View;)V

    .line 933
    :cond_1a1
    return-void
.end method

.method private setupViewUIAttrs(Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 1140
    if-eqz p1, :cond_c2

    .line 1141
    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lifevibes/trimapp/R$styleable;->DoubleSeekbarStyleable:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1142
    .local v0, array:Landroid/content/res/TypedArray;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_HEIGHT:I

    .line 1143
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_MARGIN_T:I

    .line 1144
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    .line 1145
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING_SPACE:I

    .line 1146
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_HEIGHT:I

    .line 1147
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_MARGIN_T:I

    .line 1148
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH:I

    .line 1149
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    .line 1150
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_HEIGHT:I

    .line 1151
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    .line 1152
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_T:I

    .line 1153
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_PADDING:I

    .line 1154
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_HEIGHT:I

    .line 1155
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_WIDTH:I

    .line 1156
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_HEIGHT:I

    .line 1157
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_WIDTH:I

    .line 1158
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_LR:I

    .line 1159
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->TIME_MARGIN_T:I

    .line 1160
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->LAYOUT_HEIGHT:I

    .line 1162
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_PADDING:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    .line 1163
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    .line 1164
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    .line 1165
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_RIGHT_X:I

    .line 1166
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    .line 1168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1172
    .end local v0           #array:Landroid/content/res/TypedArray;
    :goto_c1
    return-void

    .line 1170
    :cond_c2
    const-string v1, "TrimApp_DSB"

    const-string v2, "setupViewUIAttrs Error!! attrs is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1
.end method

.method private startLongPress()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    .line 588
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    .line 589
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    .line 592
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    .line 593
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    if-ge v2, v3, :cond_20

    .line 594
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    .line 597
    :cond_20
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    sub-int v0, v2, v3

    .line 598
    .local v0, position:I
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    packed-switch v2, :pswitch_data_a6

    .line 619
    const-string v2, "TrimApp_DSB"

    const-string v3, "startLongPress() : invalid handle selected "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_36
    return-void

    .line 601
    :pswitch_37
    int-to-long v2, v0

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v7

    float-to-int v1, v2

    .line 602
    .local v1, timeMillis:I
    invoke-virtual {p0, v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 603
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 605
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveLayoutLeft:I

    .line 606
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutRight:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_RIGHT_X:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v8, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    .line 624
    :goto_61
    iput-boolean v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    .line 625
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 628
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v2, :cond_72

    .line 629
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-interface {v2, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onLongPressed(I)V

    .line 632
    :cond_72
    const/4 v2, 0x0

    invoke-direct {p0, v2, v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 633
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    goto :goto_36

    .line 610
    .end local v1           #timeMillis:I
    :pswitch_7a
    int-to-long v2, v0

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v7

    float-to-int v1, v2

    .line 611
    .restart local v1       #timeMillis:I
    invoke-virtual {p0, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 612
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 614
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveLayoutLeft:I

    .line 615
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLayoutLeft:I

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_LEFT_X:I

    add-int/2addr v2, v3

    invoke-direct {p0, v6, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    goto :goto_61

    .line 598
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_37
        :pswitch_7a
    .end packed-switch
.end method

.method private stringForPlayTime(I)Ljava/lang/String;
    .registers 4
    .parameter "timeMs"

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsLandscape:Z

    if-eqz v0, :cond_9

    .line 744
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 13
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 751
    if-gez p1, :cond_8

    .line 752
    const-string v4, ""

    .line 764
    :goto_7
    return-object v4

    .line 754
    :cond_8
    div-int/lit16 v3, p1, 0x3e8

    .line 756
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 757
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 758
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 760
    .local v0, hours:I
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 761
    if-gtz v0, :cond_20

    sget v4, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_42

    .line 762
    :cond_20
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 764
    :cond_42
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method private updateTimeTextAndSendListener(IZ)V
    .registers 13
    .parameter "handleID"
    .parameter "makeThumbnail"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x3

    .line 769
    const/4 v1, 0x0

    .line 771
    .local v1, timeMs:I
    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v5, v8, :cond_3f

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v5, v7, :cond_3f

    .line 772
    invoke-virtual {p0, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 773
    sget v5, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_33

    .line 774
    iget-object v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForPlayTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :goto_21
    iget-object v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v5, :cond_32

    iget-boolean v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    if-eqz v5, :cond_32

    .line 779
    iget-object v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    iget v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v6, v7, :cond_3d

    :goto_2f
    invoke-interface {v5, v1, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onProgressChanged(IZ)V

    .line 828
    :cond_32
    :goto_32
    return-void

    .line 776
    :cond_33
    iget-object v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    :cond_3d
    move v3, v4

    .line 779
    goto :goto_2f

    .line 784
    :cond_3f
    if-nez p1, :cond_6b

    move v2, v3

    .line 785
    .local v2, updateAll:Z
    :goto_42
    const/4 v0, -0x1

    .line 787
    .local v0, currentTimeMs:I
    packed-switch p1, :pswitch_data_ae

    .line 818
    :cond_46
    :goto_46
    sget v3, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_58

    .line 819
    iget-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-eqz v3, :cond_58

    .line 820
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForPlayTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :cond_58
    const/4 v3, -0x1

    if-le v0, v3, :cond_32

    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    if-eqz v3, :cond_32

    .line 826
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    invoke-interface {v3, v4, v0, p2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onHandleChanged(IIZ)V

    goto :goto_32

    .end local v0           #currentTimeMs:I
    .end local v2           #updateAll:Z
    :cond_6b
    move v2, v4

    .line 784
    goto :goto_42

    .line 790
    .restart local v0       #currentTimeMs:I
    .restart local v2       #updateAll:Z
    :pswitch_6d
    invoke-virtual {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 791
    iget-object v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v5, v3, :cond_7f

    .line 793
    move v0, v1

    .line 795
    :cond_7f
    if-eqz v2, :cond_46

    .line 799
    :pswitch_81
    invoke-virtual {p0, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 800
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvRightTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v3, v8, :cond_93

    .line 802
    move v0, v1

    .line 804
    :cond_93
    if-eqz v2, :cond_46

    .line 808
    :pswitch_95
    invoke-virtual {p0, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 809
    sget v3, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_a7

    .line 810
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForPlayTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_a7
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    if-ne v3, v7, :cond_46

    .line 813
    move v0, v1

    goto :goto_46

    .line 787
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6d
        :pswitch_81
        :pswitch_95
    .end packed-switch
.end method


# virtual methods
.method public addImageViewToLinear(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public clearAllImageViewFromLinear()V
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 376
    return-void
.end method

.method public clearLongPress(Z)V
    .registers 2
    .parameter "makeThumbnail"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->endLongPress(Z)V

    .line 355
    return-void
.end method

.method public getDisplayedNumberOfImages(I)I
    .registers 4
    .parameter "width"

    .prologue
    .line 526
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mNumberOfImages:I

    if-nez v0, :cond_f

    .line 527
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_MARGIN_LR:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_WIDTH:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mNumberOfImages:I

    .line 530
    :cond_f
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mNumberOfImages:I

    return v0
.end method

.method public getDuration()I
    .registers 4

    .prologue
    .line 473
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 474
    .local v1, start:I
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 475
    .local v0, end:I
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    if-ge v1, v2, :cond_a

    .line 476
    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    .line 478
    :cond_a
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    if-le v0, v2, :cond_10

    .line 479
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    .line 481
    :cond_10
    sub-int v2, v0, v1

    return v2
.end method

.method public getEndTime()I
    .registers 3

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    if-le v0, v1, :cond_d

    .line 467
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveEndTime:I

    .line 469
    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    goto :goto_c
.end method

.method public getImageHeight()I
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_HEIGHT:I

    return v0
.end method

.method public getImageWidth()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_WIDTH:I

    return v0
.end method

.method public getPosition(I)I
    .registers 4
    .parameter "handleID"

    .prologue
    .line 514
    packed-switch p1, :pswitch_data_24

    .line 522
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 516
    :pswitch_5
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 518
    :pswitch_f
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_PADDING:I

    add-int/2addr v0, v1

    goto :goto_4

    .line 520
    :pswitch_19
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    add-int/2addr v0, v1

    goto :goto_4

    .line 514
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public getStartTime()I
    .registers 3

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    iget v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    if-ge v0, v1, :cond_d

    .line 460
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSaveStartTime:I

    .line 462
    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    goto :goto_c
.end method

.method public getTimeMillis(I)I
    .registers 11
    .parameter "handleID"

    .prologue
    const/high16 v8, 0x3f00

    .line 485
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getPosition(I)I

    move-result v3

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    sub-int v1, v3, v4

    .line 486
    .local v1, position:I
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    sub-int v0, v3, v4

    .line 487
    .local v0, duration:I
    iget-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-eqz v3, :cond_16

    .line 488
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mLongDuration:I

    .line 491
    :cond_16
    const/4 v2, 0x0

    .line 492
    .local v2, time:I
    packed-switch p1, :pswitch_data_4e

    .line 506
    :goto_1a
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    if-le v2, v3, :cond_20

    .line 507
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 510
    :cond_20
    return v2

    .line 494
    :pswitch_21
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    int-to-long v4, v1

    int-to-long v6, v0

    mul-long/2addr v4, v6

    long-to-float v4, v4

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 495
    goto :goto_1a

    .line 497
    :pswitch_30
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    int-to-long v4, v1

    int-to-long v6, v0

    mul-long/2addr v4, v6

    long-to-float v4, v4

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 498
    goto :goto_1a

    .line 500
    :pswitch_3f
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    int-to-long v4, v1

    int-to-long v6, v0

    mul-long/2addr v4, v6

    long-to-float v4, v4

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 501
    goto :goto_1a

    .line 492
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_30
        :pswitch_3f
    .end packed-switch
.end method

.method public initDoubleSeekBar()V
    .registers 6

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    iput v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 193
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    .line 194
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    .line 195
    iput v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 196
    iput-boolean v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    .line 197
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    .line 198
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreRightTimeMs:I

    .line 199
    iput v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreUserTimeMs:I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 202
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mFormatter:Ljava/util/Formatter;

    .line 204
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;

    invoke-direct {v2, p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;-><init>(Lcom/lifevibes/trimapp/widget/DoubleSeekBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iput-boolean v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsLandscape:Z

    .line 207
    sget-boolean v0, Lcom/lifevibes/trimapp/Trim;->SUPPORT_MULT_ORIENTATION:Z

    if-eqz v0, :cond_49

    .line 208
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_49

    .line 209
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsLandscape:Z

    .line 213
    :cond_49
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setupUIComponents()V

    .line 214
    invoke-virtual {p0, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 215
    return-void
.end method

.method public isLongPressing()Z
    .registers 2

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    return v0
.end method

.method public moveUserHandleTo(I)V
    .registers 13
    .parameter "timeMillis"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 419
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    if-ge p1, v3, :cond_4c

    .line 420
    iget p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 425
    :cond_a
    :goto_a
    int-to-long v3, p1

    iget v5, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mHandleGap:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 426
    .local v0, position:I
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->IMAGE_CONTAINER_EMPTY:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int v2, v3, v4

    .line 427
    .local v2, userHandleL:I
    invoke-direct {p0, v7, v7, v2, v10}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getValidLeftPosition(IIII)I

    move-result v2

    .line 430
    invoke-direct {p0, v10, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setHandleLayout(II)V

    .line 433
    sget v3, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-eqz v3, :cond_65

    .line 434
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v3, v9, :cond_53

    .line 435
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForPlayTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v3, v9, :cond_4b

    .line 450
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    invoke-interface {v3, p1, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;->onProgressChanged(IZ)V

    .line 452
    :cond_4b
    return-void

    .line 421
    .end local v0           #position:I
    .end local v2           #userHandleL:I
    :cond_4c
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    if-le p1, v3, :cond_a

    .line 422
    iget p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    goto :goto_a

    .line 436
    .restart local v0       #position:I
    .restart local v2       #userHandleL:I
    :cond_53
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v3, v8, :cond_3a

    .line 437
    invoke-virtual {p0, v10}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 438
    .local v1, timeMs:I
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvPlayTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForPlayTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 441
    .end local v1           #timeMs:I
    :cond_65
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v3, v9, :cond_73

    .line 442
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 443
    :cond_73
    iget v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v3, v8, :cond_3a

    .line 444
    invoke-virtual {p0, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 445
    .restart local v1       #timeMs:I
    iget-object v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mTvLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 220
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 330
    if-eqz p2, :cond_17

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 332
    .local v0, viewId:I
    const/high16 v1, 0x7f06

    if-ne v0, v1, :cond_e

    .line 333
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 341
    .end local v0           #viewId:I
    :cond_d
    :goto_d
    return-void

    .line 334
    .restart local v0       #viewId:I
    :cond_e
    const v1, 0x7f060001

    if-ne v0, v1, :cond_d

    .line 335
    const/4 v1, 0x2

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    goto :goto_d

    .line 338
    .end local v0           #viewId:I
    :cond_17
    invoke-direct {p0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->endLongPress(Z)V

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    goto :goto_d
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 296
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 297
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 299
    .local v1, viewId:I
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 300
    if-eqz v0, :cond_f

    .line 325
    :cond_e
    :goto_e
    return v2

    .line 304
    :cond_f
    const/high16 v4, 0x7f06

    if-eq v1, v4, :cond_18

    const v4, 0x7f060001

    if-ne v1, v4, :cond_e

    .line 305
    :cond_18
    sparse-switch p2, :sswitch_data_44

    goto :goto_e

    .line 307
    :sswitch_1c
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    rsub-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 308
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    move v2, v3

    .line 309
    goto :goto_e

    .line 311
    :sswitch_27
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 312
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    move v2, v3

    .line 313
    goto :goto_e

    .line 316
    :sswitch_32
    iget-boolean v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    if-eqz v2, :cond_3f

    .line 317
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->startLongPress()V

    :goto_3d
    move v2, v3

    .line 321
    goto :goto_e

    .line 319
    :cond_3f
    invoke-direct {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->endLongPress(Z)V

    goto :goto_3d

    .line 305
    nop

    :sswitch_data_44
    .sparse-switch
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_27
        0x17 -> :sswitch_32
        0x42 -> :sswitch_32
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x1

    .line 940
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->layoutTimeText(IIII)V

    .line 941
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->layoutImageContainer(IIII)V

    .line 942
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->layoutHandles(IIII)V

    .line 944
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    if-nez v0, :cond_17

    .line 945
    iput-boolean v1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    .line 946
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->restoreHandleState()V

    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->updateTimeTextAndSendListener(IZ)V

    .line 949
    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 225
    .local v1, forceWidth:I
    iget v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->LAYOUT_HEIGHT:I

    .line 227
    .local v0, forceHeight:I
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getDisplayedNumberOfImages(I)I

    .line 228
    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/high16 v7, 0x7f06

    const/4 v6, 0x2

    const v5, 0x7f060002

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 236
    .local v1, viewId:I
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 237
    if-eq v1, v7, :cond_19

    const v4, 0x7f060001

    if-ne v1, v4, :cond_28

    .line 238
    :cond_19
    iget-boolean v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    if-eqz v4, :cond_22

    .line 239
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    :cond_22
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_a4

    .line 291
    :cond_27
    :goto_27
    return v2

    .line 241
    :cond_28
    if-eq v1, v5, :cond_22

    .line 244
    invoke-direct {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->endLongPress(Z)V

    goto :goto_27

    .line 250
    :pswitch_2e
    if-ne v1, v7, :cond_3d

    .line 251
    iget-boolean v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    if-eqz v2, :cond_3b

    .line 252
    iput v3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 253
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_3b
    :goto_3b
    move v2, v3

    .line 269
    goto :goto_27

    .line 255
    :cond_3d
    const v4, 0x7f060001

    if-ne v1, v4, :cond_4e

    .line 256
    iget-boolean v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    if-eqz v2, :cond_3b

    .line 257
    iput v6, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    .line 258
    iget-object v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_3b

    .line 260
    :cond_4e
    if-ne v1, v5, :cond_27

    .line 261
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v2, v3, :cond_58

    .line 262
    const/4 v2, 0x3

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    goto :goto_3b

    .line 263
    :cond_58
    iget v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v2, v6, :cond_3b

    .line 264
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->onStartTrackingTouch()V

    goto :goto_3b

    .line 271
    :pswitch_60
    if-ne v1, v5, :cond_74

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_USER_WIDTH_HALF:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    .line 276
    :goto_6f
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    move v2, v3

    .line 277
    goto :goto_27

    .line 274
    :cond_74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->HANDLE_WIDTH_HALF:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mCurrentPositionX:I

    goto :goto_6f

    .line 279
    :pswitch_82
    if-eq v1, v7, :cond_89

    const v4, 0x7f060001

    if-ne v1, v4, :cond_9a

    .line 280
    :cond_89
    invoke-direct {p0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->endLongPress(Z)V

    .line 281
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 282
    iget-object v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 288
    :cond_96
    :goto_96
    iput v2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mPressedHandle:I

    move v2, v3

    .line 289
    goto :goto_27

    .line 283
    :cond_9a
    if-ne v1, v5, :cond_96

    .line 284
    iget v4, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    if-ne v4, v6, :cond_96

    .line 285
    invoke-direct {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->onStopTrackingTouch()V

    goto :goto_96

    .line 248
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_82
        :pswitch_60
    .end packed-switch
.end method

.method public refreshDisplay()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIsCreated:Z

    .line 369
    iput-boolean v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mInLongPress:Z

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 371
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestLayout()V

    .line 372
    return-void
.end method

.method public restoreHandleState(III)V
    .registers 4
    .parameter "leftPos"
    .parameter "rightPos"
    .parameter "userPos"

    .prologue
    .line 358
    iput p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreLeftTimeMs:I

    .line 359
    iput p2, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreRightTimeMs:I

    .line 360
    iput p3, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mRestoreUserTimeMs:I

    .line 361
    return-void
.end method

.method public setEndTime(I)V
    .registers 2
    .parameter "timeMillis"

    .prologue
    .line 387
    iput p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mEndTime:I

    .line 388
    return-void
.end method

.method public setNextFocusDownId(II)V
    .registers 4
    .parameter "handleID"
    .parameter "resId"

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_10

    .line 416
    :goto_3
    return-void

    .line 410
    :pswitch_4
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    goto :goto_3

    .line 413
    :pswitch_a
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    goto :goto_3

    .line 408
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public setOnDoubleSeekBarListener(Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mListener:Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;

    .line 380
    return-void
.end method

.method public setSideHandleEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mSideHandleEnabled:Z

    .line 392
    return-void
.end method

.method public setStartTime(I)V
    .registers 2
    .parameter "timeMillis"

    .prologue
    .line 383
    iput p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mStartTime:I

    .line 384
    return-void
.end method

.method public setUserHandleMode(I)V
    .registers 4
    .parameter "Mode"

    .prologue
    .line 395
    iput p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mUserHandleMode:I

    .line 396
    packed-switch p1, :pswitch_data_16

    .line 405
    :goto_5
    return-void

    .line 399
    :pswitch_6
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 402
    :pswitch_d
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->mIvUserHandle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 396
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method
