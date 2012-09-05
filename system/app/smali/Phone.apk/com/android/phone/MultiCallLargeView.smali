.class public Lcom/android/phone/MultiCallLargeView;
.super Lcom/android/phone/MultiCallView;
.source "MultiCallLargeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

.field protected mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MultiCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 61
    const-string v0, "Inflate multi call large view"

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->log(Ljava/lang/String;)V

    .line 62
    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 68
    return-void

    .line 67
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 10
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 90
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 92
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2e

    .line 93
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 94
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 97
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2e
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallLargeView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 101
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 102
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 104
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 105
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 119
    const-string v4, "View.GONE"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->log(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 139
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v4, v5, :cond_6f

    .line 140
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :goto_6e
    return-void

    .line 144
    :cond_6f
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6e
.end method
