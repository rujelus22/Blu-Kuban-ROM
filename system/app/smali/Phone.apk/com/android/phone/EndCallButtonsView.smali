.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EndCallButtonsView$1;,
        Lcom/android/phone/EndCallButtonsView$ViewMode;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsOneHandOption:Z

.field private mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

.field private mLeftArrow:Landroid/view/View;

.field private mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/EndCallButtonsView;->DBG:Z

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
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOneHandOption:Z

    .line 66
    sget-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/EndCallButtonsView$ViewMode;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;

    .line 72
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 74
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 77
    const v0, 0x7f0900a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0900aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0900ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0900a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0900a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0900a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_64

    .line 91
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    :cond_64
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 442
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method private reInflateView()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_c
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    .line 385
    :cond_15
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsViewOneHand;->setVisibility(I)V

    .line 387
    :cond_1e
    sget-object v0, Lcom/android/phone/EndCallButtonsView$1;->$SwitchMap$com$android$phone$EndCallButtonsView$ViewMode:[I

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mViewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;

    invoke-virtual {v1}, Lcom/android/phone/EndCallButtonsView$ViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 418
    :goto_2b
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 419
    return-void

    .line 389
    :pswitch_37
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    if-nez v0, :cond_44

    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    .line 390
    :cond_44
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 395
    :pswitch_4f
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    if-nez v0, :cond_5e

    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsViewLand;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    .line 396
    :cond_5e
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsViewLand;->initialize()V

    .line 397
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    invoke-virtual {v0, v2}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    goto :goto_2b

    .line 402
    :pswitch_6e
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    if-nez v0, :cond_7d

    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsViewOneHand;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    .line 403
    :cond_7d
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsViewOneHand;->initialize()V

    .line 404
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-nez v0, :cond_9b

    .line 406
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-nez v0, :cond_af

    .line 410
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    :cond_af
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    invoke-virtual {v0, v2}, Lcom/android/phone/EndCallButtonsViewOneHand;->setVisibility(I)V

    goto/16 :goto_2b

    .line 387
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_37
        :pswitch_4f
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method public disableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    sget-boolean v1, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v1, :cond_16

    const-string v1, "Inflate End call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 107
    :cond_16
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 108
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->reInflateView()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 262
    .local v1, id:I
    sget-boolean v6, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v6, :cond_33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 263
    :cond_33
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 264
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_47

    .line 266
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 268
    :cond_47
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 269
    .local v4, isIncome:Ljava/lang/Boolean;
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 270
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 274
    :cond_67
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, phoneNumber:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_1b6

    .line 377
    sget-boolean v6, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v6, :cond_9a

    const-string v6, "EndCallButtonsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick: unexpected click: View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_9a
    :goto_9a
    return-void

    .line 277
    :sswitch_9b
    if-eqz v5, :cond_9a

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 279
    const/4 v3, 0x0

    .line 280
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 282
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 285
    const-string v6, "CALL_END"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    :cond_c5
    :goto_c5
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_9a

    .line 288
    :cond_cb
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.CALL"

    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_c5

    .line 296
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_d9
    if-eqz v5, :cond_9a

    .line 297
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 305
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.phone.videocall"

    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_9a

    .line 313
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_f6
    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 314
    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    .line 317
    :cond_102
    if-eqz v5, :cond_9a

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 319
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "sms"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_9a

    .line 324
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_11a
    if-eqz v5, :cond_9a

    .line 325
    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_128

    .line 326
    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    .line 328
    :cond_128
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 337
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v6, "phone"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9a

    .line 343
    .end local v2           #insertIntent:Landroid/content/Intent;
    :sswitch_140
    if-eqz v5, :cond_9a

    .line 344
    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 345
    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    .line 347
    :cond_14e
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 349
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "phone"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v6, "phone_type"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v6, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9a

    .line 365
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_171
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onehand_direction"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    invoke-virtual {v6, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto/16 :goto_9a

    .line 371
    :sswitch_193
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onehand_direction"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    invoke-virtual {v6, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto/16 :goto_9a

    .line 275
    nop

    :sswitch_data_1b6
    .sparse-switch
        0x7f09008b -> :sswitch_171
        0x7f09008c -> :sswitch_193
        0x7f0900a7 -> :sswitch_11a
        0x7f0900a8 -> :sswitch_140
        0x7f0900a9 -> :sswitch_9b
        0x7f0900aa -> :sswitch_d9
        0x7f0900ab -> :sswitch_f6
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 122
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 24
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 125
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 126
    const-string v18, "support_one_hand"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "onehand_dialer_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_200

    const/16 v18, 0x1

    :goto_2a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/EndCallButtonsView;->mIsOneHandOption:Z

    .line 128
    :cond_30
    sget-object v17, Lcom/android/phone/EndCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/EndCallButtonsView$ViewMode;

    .line 130
    .local v17, viewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOneHandOption:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3c

    sget-object v17, Lcom/android/phone/EndCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/EndCallButtonsView$ViewMode;

    .line 131
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4c

    sget-object v17, Lcom/android/phone/EndCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/EndCallButtonsView$ViewMode;

    .line 133
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_61

    .line 134
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mViewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->reInflateView()V

    .line 138
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 149
    .local v4, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9d

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 153
    :cond_9d
    const/4 v9, 0x0

    .line 154
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 155
    .local v15, phoneType:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_204

    .line 156
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 163
    :goto_b0
    if-eqz v9, :cond_29c

    .line 164
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 165
    .local v11, isEmergencyCall:Z
    if-nez v11, :cond_231

    const/4 v8, 0x1

    .line 166
    .local v8, canVoiceCall:Z
    :goto_bd
    if-nez v11, :cond_234

    const/4 v7, 0x1

    .line 167
    .local v7, canVideoCall:Z
    :goto_c0
    if-nez v11, :cond_237

    const/4 v6, 0x1

    .line 168
    .local v6, canSendMsgButton:Z
    :goto_c3
    const/4 v5, 0x0

    .line 169
    .local v5, canSaveCall:Z
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    .line 171
    .local v16, presentation:I
    const-string v3, "20"

    .line 172
    .local v3, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_pcw_enabled"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, lockPcwState:Ljava/lang/String;
    if-eqz v13, :cond_23a

    const-string v18, "20"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23a

    .line 177
    sget-boolean v18, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v18, :cond_f1

    const-string v18, "EndCallButtonsView : LOCK_PCW_ENABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 178
    :cond_f1
    const/4 v8, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v6, 0x0

    .line 208
    :cond_f4
    :goto_f4
    const-string v18, "PRIVATE NUMBER"

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_122

    const-string v18, "Restricted"

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_122

    const-string v18, "Unavailable"

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_122

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_126

    .line 212
    :cond_122
    const/4 v8, 0x0

    .line 213
    const/4 v7, 0x0

    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v5, 0x0

    .line 220
    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    if-eqz v8, :cond_27f

    const/16 v18, 0x1

    :goto_130
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    if-eqz v7, :cond_283

    const/16 v18, 0x1

    :goto_141
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    if-eqz v6, :cond_287

    const/16 v18, 0x1

    :goto_152
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v5, :cond_28b

    const/16 v18, 0x0

    :goto_163
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19e

    .line 230
    const-string v2, ""

    .line 232
    .local v2, DataNetworkEnable:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_193

    const-string v18, "disable"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28f

    .line 233
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    .end local v2           #DataNetworkEnable:Ljava/lang/String;
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v5           #canSaveCall:Z
    .end local v6           #canSendMsgButton:Z
    .end local v7           #canVideoCall:Z
    .end local v8           #canVoiceCall:Z
    .end local v11           #isEmergencyCall:Z
    .end local v13           #lockPcwState:Ljava/lang/String;
    .end local v16           #presentation:I
    :cond_19e
    :goto_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mOneHand:Lcom/android/phone/EndCallButtonsViewOneHand;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/EndCallButtonsViewOneHand;->getVisibility()I

    move-result v18

    if-nez v18, :cond_1ff

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "onehand_direction"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2ab

    const/4 v12, 0x1

    .line 244
    .local v12, isOneHandOptionRight:Z
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v12, :cond_2ae

    const/16 v18, 0x0

    :goto_1df
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v12, :cond_2b2

    const/16 v18, 0x8

    :goto_1f8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .end local v12           #isOneHandOptionRight:Z
    :cond_1ff
    return-void

    .line 127
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    .end local v15           #phoneType:I
    .end local v17           #viewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;
    :cond_200
    const/16 v18, 0x0

    goto/16 :goto_2a

    .line 157
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v9       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v15       #phoneType:I
    .restart local v17       #viewMode:Lcom/android/phone/EndCallButtonsView$ViewMode;
    :cond_204
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_210

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_216

    .line 159
    :cond_210
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    goto/16 :goto_b0

    .line 161
    :cond_216
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected phone type: isContactExist: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 165
    .restart local v11       #isEmergencyCall:Z
    :cond_231
    const/4 v8, 0x0

    goto/16 :goto_bd

    .line 166
    .restart local v8       #canVoiceCall:Z
    :cond_234
    const/4 v7, 0x0

    goto/16 :goto_c0

    .line 167
    .restart local v7       #canVideoCall:Z
    :cond_237
    const/4 v6, 0x0

    goto/16 :goto_c3

    .line 182
    .restart local v3       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v5       #canSaveCall:Z
    .restart local v6       #canSendMsgButton:Z
    .restart local v13       #lockPcwState:Ljava/lang/String;
    .restart local v16       #presentation:I
    :cond_23a
    sget v18, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_27a

    sget v18, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_27a

    .line 184
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 185
    .local v14, o:Ljava/lang/Object;
    instance-of v0, v14, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_f4

    move-object v10, v14

    .line 186
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 187
    .local v10, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v11, :cond_278

    iget-boolean v0, v10, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v18, v0

    if-nez v18, :cond_278

    const/4 v5, 0x1

    .line 191
    :goto_260
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_274

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isCustomerServiceNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f4

    .line 193
    :cond_274
    const/4 v5, 0x0

    .line 194
    const/4 v6, 0x0

    goto/16 :goto_f4

    .line 187
    :cond_278
    const/4 v5, 0x0

    goto :goto_260

    .line 200
    .end local v10           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #o:Ljava/lang/Object;
    :cond_27a
    const/4 v8, 0x0

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v6, 0x0

    goto/16 :goto_f4

    .line 220
    :cond_27f
    const/16 v18, 0x0

    goto/16 :goto_130

    .line 221
    :cond_283
    const/16 v18, 0x0

    goto/16 :goto_141

    .line 222
    :cond_287
    const/16 v18, 0x0

    goto/16 :goto_152

    .line 223
    :cond_28b
    const/16 v18, 0x4

    goto/16 :goto_163

    .line 235
    .restart local v2       #DataNetworkEnable:Ljava/lang/String;
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_19e

    .line 239
    .end local v2           #DataNetworkEnable:Ljava/lang/String;
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v5           #canSaveCall:Z
    .end local v6           #canSendMsgButton:Z
    .end local v7           #canVideoCall:Z
    .end local v8           #canVoiceCall:Z
    .end local v11           #isEmergencyCall:Z
    .end local v13           #lockPcwState:Ljava/lang/String;
    .end local v16           #presentation:I
    :cond_29c
    sget-boolean v18, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v18, :cond_19e

    const-string v18, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_19e

    .line 243
    :cond_2ab
    const/4 v12, 0x0

    goto/16 :goto_1cd

    .line 244
    .restart local v12       #isOneHandOptionRight:Z
    :cond_2ae
    const/16 v18, 0x8

    goto/16 :goto_1df

    .line 245
    :cond_2b2
    const/16 v18, 0x0

    goto/16 :goto_1f8
.end method
