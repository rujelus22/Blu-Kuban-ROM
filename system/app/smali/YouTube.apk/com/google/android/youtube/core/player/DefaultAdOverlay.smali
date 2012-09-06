.class public final Lcom/google/android/youtube/core/player/DefaultAdOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/TextView;

.field private final f:F

.field private final g:I

.field private h:Lcom/google/android/youtube/core/player/b;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const v6, -0x333334

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput p2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->g:I

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_120

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->i:Z

    .line 62
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->f:F

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->f:F

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a(IF)I

    move-result v0

    .line 82
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    const/high16 v2, -0x7800

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    .line 92
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->f:F

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a(IF)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->addView(Landroid/view/View;)V

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->i:Z

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->setOrientation(Z)V

    .line 117
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->setVisibility(I)V

    .line 118
    return-void

    :cond_120
    move v0, v1

    .line 61
    goto/16 :goto_1c
.end method

.method private static a(IF)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->i:Z

    if-eqz v0, :cond_1d

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0060

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->k:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_1c
    return-void

    .line 127
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0061

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 130
    :cond_3c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 135
    return-object p0
.end method

.method public final a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 160
    sub-int v0, p2, p1

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->k:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c()V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    if-ne v0, v1, :cond_36

    .line 163
    div-int/lit16 v0, p1, 0x3e8

    rsub-int/lit8 v0, v0, 0x5

    .line 164
    if-gtz v0, :cond_37

    .line 165
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    if-eqz v0, :cond_36

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->b()V

    .line 174
    :cond_36
    :goto_36
    return-void

    .line 171
    :cond_37
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0064

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method

.method public final a(Lcom/google/android/youtube/core/model/n;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->k:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->j:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c()V

    .line 146
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/n;->d()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 147
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0064

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_35
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->setVisibility(I)V

    .line 157
    return-void

    .line 151
    :cond_4d
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;->NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_35

    .line 154
    :cond_58
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->setVisibility(I)V

    .line 185
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    if-eqz v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->a()V

    .line 197
    :cond_d
    :goto_d
    return-void

    .line 191
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->l:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/DefaultAdOverlay$State;

    if-ne v0, v1, :cond_1e

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->c()V

    goto :goto_d

    .line 193
    :cond_1e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->i:Z

    if-nez v0, :cond_d

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->d()V

    goto :goto_d
.end method

.method public final setListener(Lcom/google/android/youtube/core/player/b;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->h:Lcom/google/android/youtube/core/player/b;

    .line 140
    return-void
.end method

.method public final setOrientation(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->i:Z

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    const/16 v1, 0x19

    iget v3, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->f:F

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->a(IF)I

    move-result v3

    if-eqz p1, :cond_1e

    move v1, v2

    :goto_16
    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->c()V

    .line 181
    return-void

    .line 179
    :cond_1e
    iget v1, p0, Lcom/google/android/youtube/core/player/DefaultAdOverlay;->g:I

    goto :goto_16
.end method
