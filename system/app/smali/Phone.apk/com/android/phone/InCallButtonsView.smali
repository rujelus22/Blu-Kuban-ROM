.class public Lcom/android/phone/InCallButtonsView;
.super Landroid/widget/FrameLayout;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallButtonsView$1;,
        Lcom/android/phone/InCallButtonsView$ViewMode;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAddButton:Landroid/widget/Button;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHDVideoButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallSaveButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsOneHandOption:Z

.field private mLandscape:Lcom/android/phone/InCallButtonsViewLand;

.field private mLeftArrow:Landroid/view/View;

.field private mMergeButton:Landroid/widget/Button;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/widget/ImageButton;

.field private mMultiCallButtonContainer:Landroid/view/View;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionView:Landroid/widget/ImageView;

.field private mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRecordButton:Landroid/widget/Button;

.field private mRightArrow:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mStopRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mSwapButton:Landroid/widget/Button;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;

.field private mViewMode:Lcom/android/phone/InCallButtonsView$ViewMode;

.field private mVoiceCallEqView:Landroid/widget/ImageView;

.field private mWebExButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/InCallButtonsView;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallButtonsView;->mIsOneHandOption:Z

    .line 115
    sget-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/InCallButtonsView$ViewMode;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mViewMode:Lcom/android/phone/InCallButtonsView$ViewMode;

    .line 121
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 123
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 126
    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f090106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f090107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0900fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f090109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f09010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f09010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f090108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f09010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 145
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 147
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f09010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 149
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f090104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    .line 162
    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    .line 163
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0900ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f090100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    .line 167
    const v0, 0x7f090101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    .line 168
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_11c
    const v0, 0x7f0900fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0900fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_13d

    .line 183
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 185
    :cond_13d
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_19c

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    :cond_19c
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 583
    const-string v0, "InCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private reInflateView()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    .line 545
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallButtonsViewOneHand;->setVisibility(I)V

    .line 547
    :cond_1e
    sget-object v0, Lcom/android/phone/InCallButtonsView$1;->$SwitchMap$com$android$phone$InCallButtonsView$ViewMode:[I

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mViewMode:Lcom/android/phone/InCallButtonsView$ViewMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallButtonsView$ViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 578
    :goto_2b
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 579
    return-void

    .line 549
    :pswitch_37
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    if-nez v0, :cond_44

    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    .line 550
    :cond_44
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 555
    :pswitch_4f
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-nez v0, :cond_5e

    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallButtonsViewLand;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    .line 556
    :cond_5e
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v0}, Lcom/android/phone/InCallButtonsViewLand;->initialize()V

    .line 557
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 558
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    goto :goto_2b

    .line 562
    :pswitch_6e
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    if-nez v0, :cond_7d

    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallButtonsViewOneHand;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    .line 563
    :cond_7d
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    invoke-virtual {v0}, Lcom/android/phone/InCallButtonsViewOneHand;->initialize()V

    .line 564
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-nez v0, :cond_9b

    .line 566
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    if-nez v0, :cond_af

    .line 570
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    :cond_af
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallButtonsViewOneHand;->setVisibility(I)V

    goto/16 :goto_2b

    .line 547
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_37
        :pswitch_4f
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method disableInCallControls()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 536
    const-string v0, "support_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 537
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 539
    :cond_3b
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    sget-boolean v1, Lcom/android/phone/InCallButtonsView;->DBG:Z

    if-eqz v1, :cond_16

    const-string v1, "Inflate In call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 213
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020350

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020383

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 228
    invoke-direct {p0}, Lcom/android/phone/InCallButtonsView;->reInflateView()V

    .line 229
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 472
    .local v1, id:I
    sget-boolean v4, Lcom/android/phone/InCallButtonsView;->DBG:Z

    if-eqz v4, :cond_31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 474
    :cond_31
    sparse-switch v1, :sswitch_data_da

    .line 518
    const-string v4, "InCallButtonsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: unexpected click: View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_56
    :goto_56
    const v4, 0x7f0900fe

    if-ne v1, v4, :cond_60

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 522
    :cond_60
    return-void

    .line 494
    :sswitch_61
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_56

    .line 497
    :sswitch_67
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 498
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, phoneNumber:Ljava/lang/String;
    if-eqz v3, :cond_56

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_56

    .line 506
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #insertIntent:Landroid/content/Intent;
    .end local v3           #phoneNumber:Ljava/lang/String;
    :sswitch_95
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_direction"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto :goto_56

    .line 512
    :sswitch_b6
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_direction"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto/16 :goto_56

    .line 474
    nop

    :sswitch_data_da
    .sparse-switch
        0x7f09008b -> :sswitch_95
        0x7f09008c -> :sswitch_b6
        0x7f0900fa -> :sswitch_61
        0x7f0900fe -> :sswitch_61
        0x7f090101 -> :sswitch_61
        0x7f090103 -> :sswitch_61
        0x7f090104 -> :sswitch_61
        0x7f090105 -> :sswitch_61
        0x7f090106 -> :sswitch_61
        0x7f090107 -> :sswitch_61
        0x7f090108 -> :sswitch_61
        0x7f090109 -> :sswitch_61
        0x7f09010a -> :sswitch_61
        0x7f09010b -> :sswitch_67
        0x7f09010c -> :sswitch_61
        0x7f09010d -> :sswitch_61
        0x7f09010e -> :sswitch_61
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 234
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 16
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 237
    iput p2, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 238
    const-string v8, "support_one_hand"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 239
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "onehand_dialer_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_312

    const/4 v8, 0x1

    :goto_1b
    iput-boolean v8, p0, Lcom/android/phone/InCallButtonsView;->mIsOneHandOption:Z

    .line 240
    :cond_1d
    sget-object v7, Lcom/android/phone/InCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/InCallButtonsView$ViewMode;

    .line 242
    .local v7, viewMode:Lcom/android/phone/InCallButtonsView$ViewMode;
    iget-boolean v8, p0, Lcom/android/phone/InCallButtonsView;->mIsOneHandOption:Z

    if-eqz v8, :cond_25

    sget-object v7, Lcom/android/phone/InCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/InCallButtonsView$ViewMode;

    .line 243
    :cond_25
    iget v8, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2c

    sget-object v7, Lcom/android/phone/InCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/InCallButtonsView$ViewMode;

    .line 245
    :cond_2c
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mViewMode:Lcom/android/phone/InCallButtonsView$ViewMode;

    if-eq v8, v7, :cond_35

    .line 246
    iput-object v7, p0, Lcom/android/phone/InCallButtonsView;->mViewMode:Lcom/android/phone/InCallButtonsView$ViewMode;

    .line 247
    invoke-direct {p0}, Lcom/android/phone/InCallButtonsView;->reInflateView()V

    .line 250
    :cond_35
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 251
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 252
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 253
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 254
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 255
    .local v1, bgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 257
    .local v6, isWebExEnabled:Z
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_318

    .line 259
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v8, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v8}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v8

    if-eqz v8, :cond_72

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v8, :cond_72

    .line 260
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v8, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v8}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 262
    :cond_72
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    if-eqz v6, :cond_315

    const/16 v8, 0x8

    :goto_78
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    :goto_81
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    if-eqz v6, :cond_339

    const/4 v8, 0x0

    :goto_86
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_33d

    const/4 v8, 0x0

    :goto_9b
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_341

    const/4 v8, 0x0

    :goto_b0
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_345

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-nez v8, :cond_345

    const/4 v8, 0x1

    :goto_c2
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-nez v8, :cond_d3

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_348

    :cond_d3
    const/16 v8, 0x8

    :goto_d5
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-eqz v8, :cond_34b

    .line 285
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :cond_ff
    :goto_ff
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 322
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b1

    .line 325
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v8, :cond_3ae

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v8, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v8}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v8

    if-nez v8, :cond_3ae

    const/4 v8, 0x1

    :goto_120
    invoke-virtual {v9, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 329
    :goto_123
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 331
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v8, :cond_3bc

    .line 336
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v9, 0x7f0e01ca

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 337
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    :goto_153
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_177

    .line 347
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v8, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v8}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v8

    if-nez v8, :cond_3d0

    .line 348
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v9, 0x7f0e03b2

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 349
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    :cond_177
    :goto_177
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-eqz v8, :cond_3e4

    .line 360
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 368
    :goto_183
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 369
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canMute:Z

    if-eqz v8, :cond_3ef

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-nez v8, :cond_3ef

    const/4 v8, 0x1

    :goto_198
    invoke-virtual {v9, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 370
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 373
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 374
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 375
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 378
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 379
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_3f2

    const/4 v8, 0x0

    :goto_1cb
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_1ef

    .line 383
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v8, :cond_3f6

    .line 384
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e01c7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 390
    :goto_1e9
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 393
    :cond_1ef
    const-string v8, "support_multi_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_238

    .line 394
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_420

    .line 395
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v8, v9, :cond_407

    .line 396
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e0440

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :cond_21c
    :goto_21c
    sget-boolean v8, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v8, :cond_460

    .line 413
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 416
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 424
    :cond_238
    :goto_238
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v8, :cond_245

    .line 425
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_245
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v8, :cond_24d

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_254

    .line 429
    :cond_24d
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_254
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_281

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_273

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_281

    .line 441
    :cond_273
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_281

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :cond_281
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    if-eqz v8, :cond_2b1

    .line 445
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    const-string v8, "voice_call_equalizer"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_2b1

    .line 448
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v8

    if-eqz v8, :cond_469

    const/4 v8, 0x0

    :goto_2a1
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v8, :cond_2b1

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    :cond_2b1
    const-string v8, "support_nsri_secure"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2db

    .line 453
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isNSRISecureCall()Z

    move-result v8

    if-eqz v8, :cond_2db

    .line 454
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 455
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 456
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 460
    :cond_2db
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    if-eqz v8, :cond_311

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mOneHand:Lcom/android/phone/InCallButtonsViewOneHand;

    invoke-virtual {v8}, Lcom/android/phone/InCallButtonsViewOneHand;->getVisibility()I

    move-result v8

    if-nez v8, :cond_311

    .line 461
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "onehand_direction"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_46d

    const/4 v5, 0x1

    .line 462
    .local v5, isOneHandOptionRight:Z
    :goto_2f8
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v8, :cond_304

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v5, :cond_470

    const/4 v8, 0x0

    :goto_301
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_304
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v8, :cond_311

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v5, :cond_474

    const/16 v8, 0x8

    :goto_30e
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .end local v5           #isOneHandOptionRight:Z
    :cond_311
    return-void

    .line 239
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v6           #isWebExEnabled:Z
    .end local v7           #viewMode:Lcom/android/phone/InCallButtonsView$ViewMode;
    :cond_312
    const/4 v8, 0x0

    goto/16 :goto_1b

    .line 262
    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #bgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v6       #isWebExEnabled:Z
    .restart local v7       #viewMode:Lcom/android/phone/InCallButtonsView$ViewMode;
    :cond_315
    const/4 v8, 0x0

    goto/16 :goto_78

    .line 266
    :cond_318
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    if-eqz v6, :cond_335

    const/16 v8, 0x8

    :goto_31e
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_337

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-nez v8, :cond_337

    const/4 v8, 0x1

    :goto_330
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_81

    .line 266
    :cond_335
    const/4 v8, 0x0

    goto :goto_31e

    .line 267
    :cond_337
    const/4 v8, 0x0

    goto :goto_330

    .line 269
    :cond_339
    const/16 v8, 0x8

    goto/16 :goto_86

    .line 273
    :cond_33d
    const/16 v8, 0x8

    goto/16 :goto_9b

    .line 275
    :cond_341
    const/16 v8, 0x8

    goto/16 :goto_b0

    .line 276
    :cond_345
    const/4 v8, 0x0

    goto/16 :goto_c2

    .line 277
    :cond_348
    const/4 v8, 0x0

    goto/16 :goto_d5

    .line 294
    :cond_34b
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_37c

    .line 295
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, canSaveCall:Z
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v2, :cond_377

    const/16 v8, 0x8

    :goto_35d
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_379

    const/4 v8, 0x0

    :goto_36b
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_ff

    .line 297
    :cond_377
    const/4 v8, 0x0

    goto :goto_35d

    .line 299
    :cond_379
    const/16 v8, 0x8

    goto :goto_36b

    .line 303
    .end local v2           #canSaveCall:Z
    :cond_37c
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 318
    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v8, :cond_3ac

    const/4 v8, 0x0

    :goto_3a7
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_ff

    :cond_3ac
    const/4 v8, 0x1

    goto :goto_3a7

    .line 325
    :cond_3ae
    const/4 v8, 0x0

    goto/16 :goto_120

    .line 327
    :cond_3b1
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_123

    .line 341
    :cond_3bc
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v9, 0x7f0e01c9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 342
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_153

    .line 351
    :cond_3d0
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v9, 0x7f0e03b3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 352
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_177

    .line 362
    :cond_3e4
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v9, v9, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_183

    .line 369
    :cond_3ef
    const/4 v8, 0x0

    goto/16 :goto_198

    .line 379
    :cond_3f2
    const/16 v8, 0x8

    goto/16 :goto_1cb

    .line 387
    :cond_3f6
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e01c6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1e9

    .line 398
    :cond_407
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v8, v9, :cond_21c

    .line 399
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e0442

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_21c

    .line 402
    :cond_420
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_21c

    .line 403
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v8, v9, :cond_447

    .line 404
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e0440

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_21c

    .line 406
    :cond_447
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v8, v9, :cond_21c

    .line 407
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v9, 0x7f0e0441

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_21c

    .line 418
    :cond_460
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_238

    .line 448
    :cond_469
    const/16 v8, 0x8

    goto/16 :goto_2a1

    .line 461
    :cond_46d
    const/4 v5, 0x0

    goto/16 :goto_2f8

    .line 462
    .restart local v5       #isOneHandOptionRight:Z
    :cond_470
    const/16 v8, 0x8

    goto/16 :goto_301

    .line 463
    :cond_474
    const/4 v8, 0x0

    goto/16 :goto_30e
.end method
