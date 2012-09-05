.class public Lcom/google/android/youtube/core/player/SubtitleOverlay;
.super Landroid/widget/FrameLayout;
.source "SubtitleOverlay.java"


# static fields
.field public static final DEFAULT_FONT_SIZE_LEVEL:I = 0x2

.field public static final MAX_FONT_SIZE_LEVEL:I = 0x4


# instance fields
.field private final activity:Landroid/app/Activity;

.field private fontSizeLevel:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x2

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->fontSizeLevel:I

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->activity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->createTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    const/16 v1, 0x20

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->hide()V

    .line 63
    return-void
.end method

.method private createTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .registers 6
    .parameter "text"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x4

    .line 66
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x7800

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setVisibility(I)V

    .line 116
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    const v2, 0x3ce66666

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    .line 89
    .local v1, textSize:F
    const/high16 v2, 0x4150

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2a

    .line 90
    const/high16 v1, 0x4150

    .line 94
    :cond_2a
    const-wide v2, 0x3ff6666660000000L

    iget v4, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->fontSizeLevel:I

    add-int/lit8 v4, v4, -0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 95
    float-to-int v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    if-ge v2, v3, :cond_55

    .line 98
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->createTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 101
    :cond_55
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->measureChild(Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method public setFontSizeLevel(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->fontSizeLevel:I

    .line 125
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->requestLayout()V

    .line 112
    :cond_12
    return-void
.end method
