.class public Lcom/google/android/maps/driveabout/app/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/bK;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->b:Z

    .line 39
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/LoadingView;->setBackgroundColor(I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/LoadingView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 15
    .parameter

    .prologue
    .line 71
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 77
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    const/high16 v1, 0x7f0d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v1, 0x0

    const v2, 0x7f0b002c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 87
    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 90
    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    const v0, 0x7f0d002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v0, 0x0

    const v1, 0x7f0b002c

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    new-instance v0, Landroid/graphics/LinearGradient;

    const v1, 0x7f0b002d

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f0b002e

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0b002f

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0b0030

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f09007e

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f09007f

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 107
    invoke-virtual {v8, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    const/16 v1, 0x64

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 113
    invoke-virtual {p0, v8, v0}, Lcom/google/android/maps/driveabout/app/LoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    const/4 v1, 0x0

    const v2, 0x7f0b0031

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    const v1, 0x7f090080

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/LoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/LoadingView;->invalidate()V

    .line 60
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->b:Z

    if-eqz v0, :cond_16

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->b:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->a:Lcom/google/android/maps/driveabout/app/bK;

    if-eqz v0, :cond_16

    .line 63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->a:Lcom/google/android/maps/driveabout/app/bK;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bK;->a()V

    .line 66
    :cond_16
    return-void
.end method

.method public setOnFirstDrawListener(Lcom/google/android/maps/driveabout/app/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/LoadingView;->a:Lcom/google/android/maps/driveabout/app/bK;

    .line 49
    return-void
.end method
