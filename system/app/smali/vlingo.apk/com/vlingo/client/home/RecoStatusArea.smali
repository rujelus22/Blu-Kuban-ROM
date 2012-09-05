.class public Lcom/vlingo/client/home/RecoStatusArea;
.super Landroid/widget/RelativeLayout;
.source "RecoStatusArea.java"


# static fields
.field private static final UPDATE_EQ:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private micView:Landroid/widget/ImageView;

.field private progress:Landroid/widget/ProgressBar;

.field private waveform:Landroid/widget/ImageView;

.field private waveforms:[Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/vlingo/client/home/RecoStatusArea$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/home/RecoStatusArea$1;-><init>(Lcom/vlingo/client/home/RecoStatusArea;)V

    iput-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/home/RecoStatusArea;)[Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/home/RecoStatusArea;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 55
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0f0148

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoStatusArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->micView:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoStatusArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoStatusArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->progress:Landroid/widget/ProgressBar;

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 67
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 68
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 69
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 70
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 72
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 73
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/vlingo/client/home/RecoStatusArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 76
    return-void
.end method

.method public onRMSChange(F)V
    .registers 8
    .parameter "rmsDB"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4270

    .line 79
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_c

    .line 94
    :goto_b
    return-void

    .line 82
    :cond_c
    const/high16 v3, 0x41c8

    sub-float v1, p1, v3

    .line 83
    .local v1, level:F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_16

    const/high16 v1, 0x4270

    .line 85
    :cond_16
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float v1, v3, v4

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 87
    .local v0, finalLevel:I
    if-gez v0, :cond_24

    .line 88
    const/4 v0, 0x0

    .line 89
    :cond_24
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v3

    if-lt v0, v3, :cond_2e

    .line 90
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 92
    :cond_2e
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 93
    .local v2, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public showMic()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->micView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public showProgress()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->micView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public showWaveform()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/vlingo/client/home/RecoStatusArea;->micView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    return-void
.end method
