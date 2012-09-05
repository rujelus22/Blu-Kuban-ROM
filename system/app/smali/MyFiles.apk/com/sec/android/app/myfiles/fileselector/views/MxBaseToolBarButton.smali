.class public Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;
.super Landroid/widget/LinearLayout;
.source "MxBaseToolBarButton.java"


# instance fields
.field mButton:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mImage:Landroid/widget/ImageView;

.field mResources:Landroid/content/res/Resources;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->initViews()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->initViews()V

    .line 58
    return-void
.end method

.method private initViews()V
    .registers 5

    .prologue
    .line 62
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    .line 69
    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mText:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mResources:Landroid/content/res/Resources;

    .line 75
    return-void
.end method


# virtual methods
.method public resizeButton()V
    .registers 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->requestLayout()V

    .line 232
    return-void
.end method

.method public setDimmingButton()V
    .registers 3

    .prologue
    .line 189
    const v0, 0x7f0200ca

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImage(II)V

    .line 191
    const v0, 0x55ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    .line 176
    if-eqz p1, :cond_20

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 178
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 186
    :cond_1f
    :goto_1f
    return-void

    .line 181
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 182
    const v0, 0x55ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1f
.end method

.method public setImage(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :cond_9
    return-void
.end method

.method public setImage(II)V
    .registers 4
    .parameter "resId"
    .parameter "alpha"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 113
    :cond_e
    return-void
.end method

.method public setImageAndText(II)V
    .registers 3
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImage(I)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setText(I)V

    .line 165
    return-void
.end method

.method public setNormalButton()V
    .registers 3

    .prologue
    .line 198
    const v0, 0x7f0200ca

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImage(II)V

    .line 200
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 204
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method public setText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_9
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "color"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    :cond_9
    return-void
.end method
