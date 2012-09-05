.class public Lcom/vlingo/client/car/CarRecoButton;
.super Landroid/widget/FrameLayout;
.source "CarRecoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;
    }
.end annotation


# instance fields
.field private cancelButton:Landroid/view/View;

.field private containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

.field private containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

.field private delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private doneListenButton:Landroid/widget/Button;

.field private duringRecoLayout:Landroid/widget/LinearLayout;

.field private goBackButton:Landroid/view/View;

.field private hintContainer:Landroid/widget/LinearLayout;

.field private isLandscape:Z

.field private listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

.field private popupHint:Landroid/widget/LinearLayout;

.field private startRecoButton:Landroid/view/View;

.field private startRecoLayout:Landroid/widget/LinearLayout;

.field private startRecoWithLabelButton:Landroid/view/View;

.field private tapSpeakLabel:Landroid/widget/TextView;

.field private wakeUpReadyLabel:Landroid/widget/TextView;

.field private wakeUpWordEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v0, p0, Lcom/vlingo/client/car/CarRecoButton;->isLandscape:Z

    .line 62
    iput-boolean v0, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpWordEnabled:Z

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/CarRecoButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpWordEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/CarRecoButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vlingo/client/car/CarRecoButton;->syncWakeUpVisibility()V

    return-void
.end method

.method private syncWakeUpVisibility()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpWordEnabled:Z

    if-eqz v0, :cond_13

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_12
    return-void

    .line 82
    :cond_13
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12
.end method


# virtual methods
.method public init(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;)V
    .registers 3
    .parameter "delegate"
    .parameter "listener"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vlingo/client/car/CarRecoButton;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 184
    iput-object p2, p0, Lcom/vlingo/client/car/CarRecoButton;->listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

    .line 185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->cancelButton:Landroid/view/View;

    if-ne p1, v0, :cond_11

    .line 425
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;->onCancelButtonClicked()V

    .line 446
    :cond_10
    :goto_10
    return-void

    .line 427
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    if-ne p1, v0, :cond_1f

    .line 428
    :cond_19
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;->onReadyButtonClicked()V

    goto :goto_10

    .line 430
    :cond_1f
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    if-ne p1, v0, :cond_29

    .line 431
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;->onGoBackButtonClicked()V

    goto :goto_10

    .line 433
    :cond_29
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    .line 434
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->listener:Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;->onDoneListeningButtonClicked()V

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const v7, 0x7f0f00f6

    const/16 v6, 0x14

    const/4 v2, 0x1

    const/high16 v5, 0x4080

    const/4 v3, 0x0

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_16e

    move v1, v2

    :goto_1a
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarRecoButton;->isLandscape:Z

    .line 91
    const v1, 0x7f0f0106

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    .line 92
    const v1, 0x7f0f0105

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    .line 93
    const v1, 0x7f0f0102

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    const v4, 0x7f0f010d

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 95
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 96
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    const v4, 0x7f0f010d

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 97
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 99
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 101
    const v1, 0x7f0f0104

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0f0103

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->tapSpeakLabel:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0f0044

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->cancelButton:Landroid/view/View;

    .line 105
    const v1, 0x7f0f010b

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    .line 106
    const v1, 0x7f0f0101

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    .line 109
    const v1, 0x7f0f0107

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    .line 110
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    const v1, 0x7f0f0108

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->popupHint:Landroid/widget/LinearLayout;

    .line 113
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->cancelButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-static {p0}, Lcom/vlingo/client/ui/UIUtils;->copyLayoutParamsFromView(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    iget-boolean v1, p0, Lcom/vlingo/client/car/CarRecoButton;->isLandscape:Z

    if-eqz v1, :cond_171

    .line 121
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/vlingo/client/ui/UIUtils;->convertSPToPixels(Landroid/content/res/Resources;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 122
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/vlingo/client/ui/UIUtils;->convertSPToPixels(Landroid/content/res/Resources;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 127
    :goto_f2
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1}, Lcom/vlingo/client/ui/UIUtils;->copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 132
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 135
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-direct {p0}, Lcom/vlingo/client/car/CarRecoButton;->syncWakeUpVisibility()V

    .line 139
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "de-DE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru-RU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 141
    :cond_124
    const/4 v0, 0x0

    .line 146
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_139

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 148
    .restart local v0       #btn:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/high16 v2, 0x4040

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 150
    :cond_139
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->tapSpeakLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_14b

    .line 151
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->tapSpeakLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->tapSpeakLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    const/high16 v4, 0x4140

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    :cond_14b
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_15b

    .line 165
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->wakeUpReadyLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    :cond_15b
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_16d

    .line 169
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 170
    .restart local v0       #btn:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 173
    .end local v0           #btn:Landroid/widget/Button;
    :cond_16d
    return-void

    :cond_16e
    move v1, v3

    .line 89
    goto/16 :goto_1a

    .line 124
    :cond_171
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/vlingo/client/ui/UIUtils;->convertSPToPixels(Landroid/content/res/Resources;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/vlingo/client/ui/UIUtils;->convertSPToPixels(Landroid/content/res/Resources;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_f2
.end method

.method public setListenButtonEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, res:I
    if-eqz p1, :cond_1d

    const v0, 0x7f020108

    .line 179
    :goto_b
    iget-object v1, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void

    .line 178
    :cond_1d
    const v0, 0x7f020058

    goto :goto_b
.end method

.method public setWakeUpEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 69
    new-instance v0, Lcom/vlingo/client/car/CarRecoButton$1;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/car/CarRecoButton$1;-><init>(Lcom/vlingo/client/car/CarRecoButton;Z)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public showCancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->cancelButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public showHint(Ljava/lang/String;I)V
    .registers 3
    .parameter "hintText"
    .parameter "displayDelay"

    .prologue
    .line 195
    return-void
.end method

.method public showListeningStarted()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-void
.end method

.method public showListeningStarting(Z)V
    .registers 12
    .parameter "animated"

    .prologue
    const-wide/16 v8, 0xc8

    const v7, 0x7f020058

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 249
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    if-eqz p1, :cond_52

    .line 251
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 252
    .local v0, activeAnim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 253
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 254
    .local v1, inactiveAnim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 255
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .end local v0           #activeAnim:Landroid/view/animation/AlphaAnimation;
    .end local v1           #inactiveAnim:Landroid/view/animation/AlphaAnimation;
    :goto_51
    return-void

    .line 270
    :cond_52
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51
.end method

.method public showReady(ZZZLjava/lang/String;)V
    .registers 15
    .parameter "animated"
    .parameter "isTryAgain"
    .parameter "showLabel"
    .parameter "label"

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 206
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    if-eqz p1, :cond_60

    .line 209
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 210
    .local v0, activeAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 211
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 212
    .local v1, inactiveAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 216
    iget-object v5, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    if-eqz p2, :cond_59

    move v2, v3

    :goto_27
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v5, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    if-nez p3, :cond_5b

    move v2, v3

    :goto_2f
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    if-eqz p3, :cond_37

    move v4, v3

    :cond_37
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    if-eqz p2, :cond_5d

    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    :goto_48
    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    .end local v0           #activeAnim:Landroid/view/animation/AlphaAnimation;
    .end local v1           #inactiveAnim:Landroid/view/animation/AlphaAnimation;
    :goto_55
    invoke-direct {p0}, Lcom/vlingo/client/car/CarRecoButton;->syncWakeUpVisibility()V

    .line 246
    return-void

    .restart local v0       #activeAnim:Landroid/view/animation/AlphaAnimation;
    .restart local v1       #inactiveAnim:Landroid/view/animation/AlphaAnimation;
    :cond_59
    move v2, v4

    .line 216
    goto :goto_27

    :cond_5b
    move v2, v4

    .line 217
    goto :goto_2f

    .line 222
    :cond_5d
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_48

    .line 232
    .end local v0           #activeAnim:Landroid/view/animation/AlphaAnimation;
    .end local v1           #inactiveAnim:Landroid/view/animation/AlphaAnimation;
    :cond_60
    iget-object v5, p0, Lcom/vlingo/client/car/CarRecoButton;->goBackButton:Landroid/view/View;

    if-eqz p2, :cond_8a

    move v2, v3

    :goto_65
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v5, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoButton:Landroid/view/View;

    if-nez p3, :cond_8c

    move v2, v3

    :goto_6d
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoWithLabelButton:Landroid/view/View;

    if-eqz p3, :cond_75

    move v4, v3

    :cond_75
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->duringRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->startRecoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    if-eqz p2, :cond_8e

    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    :goto_86
    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_55

    :cond_8a
    move v2, v4

    .line 232
    goto :goto_65

    :cond_8c
    move v2, v4

    .line 233
    goto :goto_6d

    .line 238
    :cond_8e
    iget-object v2, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithPadding:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_86
.end method

.method public showThinking(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->hintContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->doneListenButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarRecoButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton;->containerParamsWithoutPadding:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarRecoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    return-void
.end method
