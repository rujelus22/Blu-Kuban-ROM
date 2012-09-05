.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mLandscape:Landroid/view/View;

.field private mLeftArrow:Landroid/view/View;

.field private mOneHand:Landroid/view/View;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialerView;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 149
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_b

    .line 150
    packed-switch v0, :pswitch_data_24

    .line 159
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_f
    return v1

    .line 153
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    :cond_1d
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    .line 150
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method getDialerOrientationView()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    iget v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    if-ne v4, v2, :cond_2a

    move v1, v2

    .line 135
    .local v1, isPortrait:Z
    :goto_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_dialer_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    move v0, v2

    .line 136
    .local v0, isOneHandOption:Z
    :goto_18
    if-eqz v0, :cond_2e

    const-string v4, "support_one_hand"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v0, v2

    .line 137
    :goto_23
    if-eqz v1, :cond_33

    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    :goto_29
    return-object v2

    .end local v0           #isOneHandOption:Z
    .end local v1           #isPortrait:Z
    :cond_2a
    move v1, v3

    .line 134
    goto :goto_7

    .restart local v1       #isPortrait:Z
    :cond_2c
    move v0, v3

    .line 135
    goto :goto_18

    .restart local v0       #isOneHandOption:Z
    :cond_2e
    move v0, v3

    .line 136
    goto :goto_23

    .line 137
    :cond_30
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    goto :goto_29

    :cond_33
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    goto :goto_29
.end method

.method resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V
    .registers 11
    .parameter "dialer"
    .parameter "orientation"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 107
    iput p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 110
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    if-nez v6, :cond_11

    .line 131
    :cond_10
    :goto_10
    return-void

    .line 113
    :cond_11
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_24
    iget v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    if-ne v6, v3, :cond_74

    .line 117
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 118
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 119
    .local v1, isOneHandOption:Z
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onehand_dialer_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_66

    move v1, v3

    .line 120
    :goto_3a
    const-string v6, "support_one_hand"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    if-eqz v1, :cond_6e

    .line 121
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onehand_direction"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_68

    move v2, v3

    .line 122
    .local v2, isOneHandOptionRight:Z
    :goto_51
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLeftArrow:Landroid/view/View;

    if-eqz v2, :cond_6a

    move v3, v4

    :goto_56
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mRightArrow:Landroid/view/View;

    if-eqz v2, :cond_6c

    :goto_5d
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .end local v2           #isOneHandOptionRight:Z
    :cond_66
    move v1, v4

    .line 119
    goto :goto_3a

    :cond_68
    move v2, v4

    .line 121
    goto :goto_51

    .restart local v2       #isOneHandOptionRight:Z
    :cond_6a
    move v3, v5

    .line 122
    goto :goto_56

    :cond_6c
    move v5, v4

    .line 123
    goto :goto_5d

    .line 126
    .end local v2           #isOneHandOptionRight:Z
    :cond_6e
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 129
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #isOneHandOption:Z
    :cond_74
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .registers 4
    .parameter "dialer"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 73
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    .line 74
    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    .line 75
    const-string v0, "support_one_hand"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 76
    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLeftArrow:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLeftArrow:Landroid/view/View;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerView$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOneHand:Landroid/view/View;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mRightArrow:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mRightArrow:Landroid/view/View;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerView$2;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView$2;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_50
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V

    .line 103
    return-void
.end method
