.class public Lcom/android/email/activity/bubblelayout/BubbleButton;
.super Landroid/widget/Button;
.source "BubbleButton.java"


# instance fields
.field private mData:Lcom/android/email/activity/bubblelayout/BubbleData;

.field private mExpectedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .registers 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->initButton()V

    .line 46
    return-void
.end method

.method private initButton()V
    .registers 9

    .prologue
    .line 53
    iget-object v4, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v4}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, dataName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 55
    iget-object v4, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v4}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_15
    iget-object v4, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 63
    .local v3, res:Landroid/content/res/Resources;
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 67
    .local v1, fontColor:I
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setTextColor(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setButtonBGResourceByGUIThemeOfPreference()V

    .line 71
    const/4 v4, 0x2

    const v5, 0x7f09000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setTextSize(IF)V

    .line 72
    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f090010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f090013

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x7f090011

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setPadding(IIII)V

    .line 76
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSingleLine(Z)V

    .line 77
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setGravity(I)V

    .line 78
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    const v5, 0x7f090014

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 80
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMaxWidth(I)V

    .line 82
    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMinWidth(I)V

    .line 84
    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f090015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f090018

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x7f090016

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void

    .line 57
    .end local v1           #fontColor:I
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_ae
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15
.end method

.method private setButtonBGResourceByGUIThemeOfPreference()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    const v0, 0x7f0202b9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setBackgroundResource(I)V

    .line 101
    :goto_d
    return-void

    .line 97
    :cond_e
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setTextColor(I)V

    .line 98
    const v0, 0x7f0202ba

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setBackgroundResource(I)V

    goto :goto_d
.end method


# virtual methods
.method public getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    return-object v0
.end method

.method public getExpectedWidth()I
    .registers 7

    .prologue
    const v5, 0x7f09000f

    const v4, 0x7f09000e

    .line 110
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 115
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    if-nez v1, :cond_3c

    .line 116
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f090012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7f090013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 120
    :cond_3c
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_61

    .line 122
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 129
    :cond_4a
    :goto_4a
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    const v2, 0x7f090017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f090018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 131
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    return v1

    .line 124
    :cond_61
    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 126
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    goto :goto_4a
.end method

.method public refreshButton()V
    .registers 6

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v3

    const v4, 0x7f090017

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sub-int v2, v3, v4

    .line 150
    .local v2, width:I
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->refreshContactInfo()V

    .line 154
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, dataName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 158
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_35
    invoke-virtual {p0, v2}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMaxWidth(I)V

    .line 168
    return-void

    .line 162
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method
