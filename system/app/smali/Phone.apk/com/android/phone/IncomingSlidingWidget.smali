.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field public mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

.field private mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

.field private mVoipInUseMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 162
    :cond_10
    :goto_10
    return-void

    .line 148
    :cond_11
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_30

    .line 149
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    .line 150
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    :cond_30
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10
.end method

.method private linkControls()V
    .registers 6

    .prologue
    .line 78
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    .line 79
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0202fd

    const v2, 0x7f020378

    const v3, 0x7f02035c

    const v4, 0x7f020366

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setLeftTabResources(IIII)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f020300

    const v2, 0x7f020379

    const v3, 0x7f020361

    const v4, 0x7f020374

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setRightTabResources(IIII)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0e02ec

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setLeftHintText(I)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0e02ea

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setRightHintText(I)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 94
    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 95
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 106
    const v0, 0x7f090172

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    .line 108
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 109
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 316
    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method private showIncomingCallWidget()V
    .registers 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 169
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_10

    .line 170
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 171
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 173
    :cond_10
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 174
    return-void
.end method


# virtual methods
.method initialize(Ljava/lang/Object;)V
    .registers 5
    .parameter "object"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    const-string v1, "Inflate Incoming widget view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    .line 121
    instance-of v1, p1, Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1e

    .line 122
    check-cast p1, Lcom/android/phone/InCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 126
    :cond_1d
    :goto_1d
    return-void

    .line 123
    .restart local p1
    :cond_1e
    instance-of v1, p1, Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_1d

    .line 124
    check-cast p1, Lcom/android/phone/InVTCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    goto :goto_1d
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 136
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 252
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 7
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const v3, 0x7f090018

    const v2, 0x7f090017

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 195
    packed-switch p2, :pswitch_data_c4

    .line 241
    const-string v0, "IncomingSlidingWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_3d
    return-void

    .line 197
    :pswitch_3e
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 207
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_62

    .line 208
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_3d

    .line 209
    :cond_62
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_78

    .line 211
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_3d

    .line 213
    :cond_78
    const-string v0, "IncomingSlidingWidget"

    const-string v1, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 219
    :pswitch_80
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 229
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_a4

    .line 230
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_3d

    .line 231
    :cond_a4
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_ba

    .line 233
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_3d

    .line 235
    :cond_ba
    const-string v0, "IncomingSlidingWidget"

    const-string v1, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 195
    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_80
    .end packed-switch
.end method

.method public setVisibility(I)V
    .registers 7
    .parameter "visibility"

    .prologue
    .line 256
    if-nez p1, :cond_3b

    .line 257
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    .line 258
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 259
    .local v2, ringConn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 260
    .local v1, presentation:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, phoneNumber:Ljava/lang/String;
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v3, :cond_25

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v3, :cond_25

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 262
    :cond_25
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 265
    :goto_2b
    const-string v3, "IncomingSlidingWidget show"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 272
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :goto_30
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    return-void

    .line 264
    .restart local v0       #phoneNumber:Ljava/lang/String;
    .restart local v1       #presentation:I
    .restart local v2       #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_34
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_2b

    .line 267
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_3b
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 268
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 269
    :cond_4b
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 270
    const-string v3, "IncomingSlidingWidget gone"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_30
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 8
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 276
    iget v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v3, p2, :cond_6

    .line 277
    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 279
    :cond_6
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 280
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 281
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, v2}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    .line 284
    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 285
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, cdnipNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setCdnipNumber(Ljava/lang/String;)V

    .line 289
    .end local v1           #cdnipNumber:Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    .line 290
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 293
    const-string v3, "voip_interworking"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 294
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoIPActivated()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->canUseHoldInVoIP()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 295
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const v4, 0x7f0e03d3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 296
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :cond_5c
    :goto_5c
    return-void

    .line 298
    :cond_5d
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c
.end method
