.class public Lcom/android/phone/DialpadButtonsView;
.super Landroid/widget/RelativeLayout;
.source "DialpadButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DialpadButtonsView$2;,
        Lcom/android/phone/DialpadButtonsView$ViewMode;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEndButton:Landroid/widget/Button;

.field private mHideButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsOneHandOption:Z

.field private mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

.field private mLeftArrow:Landroid/view/View;

.field private mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;

.field private mViewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/DialpadButtonsView;->DBG:Z

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
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DialpadButtonsView;->mIsOneHandOption:Z

    .line 65
    sget-object v0, Lcom/android/phone/DialpadButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/DialpadButtonsView$ViewMode;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mViewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;

    .line 69
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DialpadButtonsView;)Lcom/android/phone/InCallScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method private linkControls(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 74
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f090088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f090087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    .line 81
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/DialpadButtonsView$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DialpadButtonsView$1;-><init>(Lcom/android/phone/DialpadButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/phone/DialpadButtonsView;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "DialpadButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_9
    return-void
.end method

.method private reInflateView()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v0, v1}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    .line 175
    :cond_15
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    invoke-virtual {v0, v1}, Lcom/android/phone/DialpadButtonsViewOneHand;->setVisibility(I)V

    .line 177
    :cond_1e
    sget-object v0, Lcom/android/phone/DialpadButtonsView$2;->$SwitchMap$com$android$phone$DialpadButtonsView$ViewMode:[I

    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mViewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;

    invoke-virtual {v1}, Lcom/android/phone/DialpadButtonsView$ViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 212
    :goto_2b
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 213
    return-void

    .line 179
    :pswitch_37
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    if-nez v0, :cond_44

    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    .line 180
    :cond_44
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 185
    :pswitch_4f
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-nez v0, :cond_63

    .line 186
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DialpadButtonsViewLand;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    .line 187
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v0}, Lcom/android/phone/DialpadButtonsViewLand;->initialize()V

    .line 189
    :cond_63
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-direct {p0, v0}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v0, v2}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    goto :goto_2b

    .line 194
    :pswitch_6e
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    if-nez v0, :cond_82

    .line 195
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DialpadButtonsViewOneHand;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    .line 196
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    invoke-virtual {v0}, Lcom/android/phone/DialpadButtonsViewOneHand;->initialize()V

    .line 198
    :cond_82
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    invoke-direct {p0, v0}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    if-nez v0, :cond_9b

    .line 200
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Lcom/android/phone/DialpadButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    if-nez v0, :cond_af

    .line 204
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Lcom/android/phone/DialpadButtonsViewOneHand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_af
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    invoke-virtual {v0, v2}, Lcom/android/phone/DialpadButtonsViewOneHand;->setVisibility(I)V

    goto/16 :goto_2b

    .line 177
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_37
        :pswitch_4f
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040011

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    sget-boolean v1, Lcom/android/phone/DialpadButtonsView;->DBG:Z

    if-eqz v1, :cond_16

    const-string v1, "Inflate Dialpad buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->log(Ljava/lang/String;)V

    .line 99
    :cond_16
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 100
    invoke-direct {p0}, Lcom/android/phone/DialpadButtonsView;->reInflateView()V

    .line 101
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 140
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->log(Ljava/lang/String;)V

    .line 141
    packed-switch v0, :pswitch_data_bc

    .line 167
    :pswitch_30
    const-string v1, "DialpadButtonsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_52
    return-void

    .line 143
    :pswitch_53
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_52

    .line 146
    :pswitch_5c
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBackButton()V

    goto :goto_52

    .line 149
    :pswitch_66
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_52

    .line 152
    :pswitch_6f
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090108

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_52

    .line 155
    :pswitch_78
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_direction"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto :goto_52

    .line 161
    :pswitch_99
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_direction"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    goto :goto_52

    .line 141
    nop

    :pswitch_data_bc
    .packed-switch 0x7f090085
        :pswitch_53
        :pswitch_66
        :pswitch_5c
        :pswitch_6f
        :pswitch_30
        :pswitch_30
        :pswitch_78
        :pswitch_99
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 106
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 11
    .parameter "cm"
    .parameter "orientation"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iput p2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    .line 110
    const-string v3, "support_one_hand"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 111
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "onehand_dialer_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_97

    move v3, v4

    :goto_1d
    iput-boolean v3, p0, Lcom/android/phone/DialpadButtonsView;->mIsOneHandOption:Z

    .line 112
    :cond_1f
    sget-object v2, Lcom/android/phone/DialpadButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/DialpadButtonsView$ViewMode;

    .line 114
    .local v2, viewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;
    iget-boolean v3, p0, Lcom/android/phone/DialpadButtonsView;->mIsOneHandOption:Z

    if-eqz v3, :cond_27

    sget-object v2, Lcom/android/phone/DialpadButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/DialpadButtonsView$ViewMode;

    .line 115
    :cond_27
    iget v3, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2e

    sget-object v2, Lcom/android/phone/DialpadButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/DialpadButtonsView$ViewMode;

    .line 117
    :cond_2e
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mViewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;

    if-eq v3, v2, :cond_37

    .line 118
    iput-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mViewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;

    .line 119
    invoke-direct {p0}, Lcom/android/phone/DialpadButtonsView;->reInflateView()V

    .line 122
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v3

    if-nez v3, :cond_99

    move v0, v4

    .line 123
    .local v0, duringCall:Z
    :goto_4c
    iget-object v7, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_9b

    move v3, v6

    :goto_51
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v7, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_9d

    move v3, v5

    :goto_59
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v7, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9f

    move v3, v6

    :goto_61
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mOneHand:Lcom/android/phone/DialpadButtonsViewOneHand;

    invoke-virtual {v3}, Lcom/android/phone/DialpadButtonsViewOneHand;->getVisibility()I

    move-result v3

    if-nez v3, :cond_96

    .line 128
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "onehand_direction"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_a1

    move v1, v4

    .line 129
    .local v1, isOneHandOptionRight:Z
    :goto_7f
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v3, :cond_8b

    iget-object v4, p0, Lcom/android/phone/DialpadButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_a3

    move v3, v5

    :goto_88
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_8b
    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/android/phone/DialpadButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_a5

    :goto_93
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .end local v1           #isOneHandOptionRight:Z
    :cond_96
    return-void

    .end local v0           #duringCall:Z
    .end local v2           #viewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;
    :cond_97
    move v3, v5

    .line 111
    goto :goto_1d

    .restart local v2       #viewMode:Lcom/android/phone/DialpadButtonsView$ViewMode;
    :cond_99
    move v0, v5

    .line 122
    goto :goto_4c

    .restart local v0       #duringCall:Z
    :cond_9b
    move v3, v5

    .line 123
    goto :goto_51

    :cond_9d
    move v3, v6

    .line 124
    goto :goto_59

    :cond_9f
    move v3, v5

    .line 125
    goto :goto_61

    :cond_a1
    move v1, v5

    .line 128
    goto :goto_7f

    .restart local v1       #isOneHandOptionRight:Z
    :cond_a3
    move v3, v6

    .line 129
    goto :goto_88

    :cond_a5
    move v6, v5

    .line 130
    goto :goto_93
.end method
