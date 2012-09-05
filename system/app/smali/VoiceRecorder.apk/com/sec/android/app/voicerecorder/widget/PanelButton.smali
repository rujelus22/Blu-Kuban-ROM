.class public Lcom/sec/android/app/voicerecorder/widget/PanelButton;
.super Landroid/widget/LinearLayout;
.source "PanelButton.java"


# instance fields
.field mButton:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mDimColor:Landroid/content/res/ColorStateList;

.field mNorColor:Landroid/content/res/ColorStateList;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mNorColor:Landroid/content/res/ColorStateList;

    .line 37
    const v0, 0x55ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mDimColor:Landroid/content/res/ColorStateList;

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->initViews()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mNorColor:Landroid/content/res/ColorStateList;

    .line 37
    const v0, 0x55ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mDimColor:Landroid/content/res/ColorStateList;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->initViews()V

    .line 61
    return-void
.end method

.method private initViews()V
    .registers 5

    .prologue
    .line 67
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030009

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    .line 73
    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    .line 75
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public setDimmed(Z)V
    .registers 4
    .parameter "dim"

    .prologue
    .line 139
    if-eqz p1, :cond_e

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mDimColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 153
    :goto_d
    return-void

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mNorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_d
.end method

.method public setImageAndText(II)V
    .registers 4
    .parameter "resId"
    .parameter "stringId"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_12
    return-void
.end method

.method public setText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_9
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "color"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    :cond_9
    return-void
.end method
