.class public final Lcom/google/android/youtube/core/player/AdOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/TextView;

.field private final f:Lcom/google/android/youtube/core/player/a;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/youtube/core/player/AdOverlay$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/a;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xf

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, -0x2

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->f:Lcom/google/android/youtube/core/player/a;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_112

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->g:Z

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    const/high16 v2, -0x7800

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    .line 93
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    const v2, 0x7f02001f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x19

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 118
    return-void

    :cond_112
    move v0, v1

    .line 64
    goto/16 :goto_19
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->g:Z

    if-eqz v0, :cond_1d

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0052

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/AdOverlay;->i:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_1c
    return-void

    .line 123
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0053

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/AdOverlay;->h:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 126
    :cond_3c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public final a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 148
    sub-int v0, p2, p1

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->i:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->b()V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->j:Lcom/google/android/youtube/core/player/AdOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/AdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/AdOverlay$State;

    if-ne v0, v1, :cond_2d

    .line 151
    div-int/lit16 v0, p1, 0x3e8

    rsub-int/lit8 v0, v0, 0x5

    .line 152
    if-gtz v0, :cond_2e

    .line 153
    sget-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->j:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2d
    :goto_2d
    return-void

    .line 156
    :cond_2e
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0056

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d
.end method

.method public final a(Lcom/google/android/youtube/core/model/o;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->i:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/google/android/youtube/core/model/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->h:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->b()V

    .line 134
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 135
    sget-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/AdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->j:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0056

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_35
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/o;->e:Landroid/net/Uri;

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 145
    return-void

    .line 139
    :cond_4d
    sget-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->j:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_35

    .line 142
    :cond_58
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->g:Z

    .line 163
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->b()V

    .line 164
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->f:Lcom/google/android/youtube/core/player/a;

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->f:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/a;->a()V

    .line 180
    :cond_d
    :goto_d
    return-void

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->d:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_18

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->f:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/a;->b()V

    goto :goto_d

    .line 176
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->g:Z

    if-nez v0, :cond_d

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->f:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/a;->c()V

    goto :goto_d
.end method
