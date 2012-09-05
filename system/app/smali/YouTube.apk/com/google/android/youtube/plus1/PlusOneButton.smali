.class public Lcom/google/android/youtube/plus1/PlusOneButton;
.super Lcom/google/android/plus1/BasePlusOneButton;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/app/Activity;

.field private e:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private f:Lcom/google/android/youtube/core/utils/i;

.field private g:Lcom/google/android/youtube/plus1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/BasePlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, v8}, Lcom/google/android/youtube/plus1/PlusOneButton;->setFocusable(Z)V

    .line 55
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/plus1/PlusOneButton;->setOrientation(I)V

    .line 56
    invoke-virtual {p0, v9}, Lcom/google/android/youtube/plus1/PlusOneButton;->setGravity(I)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    sget-object v0, Lcom/google/android/youtube/b;->e:[I

    const v2, 0x7f0d000a

    invoke-virtual {p1, p2, v0, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    .line 63
    const/4 v0, 0x2

    const v3, 0x7f0b0015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 66
    iget-object v3, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/youtube/plus1/PlusOneButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const/4 v0, 0x3

    const/high16 v3, 0x7f0e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 73
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    if-eqz v0, :cond_c2

    const v0, 0x1010288

    :goto_58
    invoke-direct {v3, p1, v4, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    const v0, 0x7f0b0017

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 85
    iget-object v3, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    const/high16 v0, 0x7f0f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 88
    iget-object v3, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    const/4 v3, 0x4

    const v4, 0x7f0b0016

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 93
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void

    .line 73
    :cond_c2
    const v0, 0x1010079

    goto :goto_58
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/google/android/plus1/w;
    .registers 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->g:Lcom/google/android/youtube/plus1/f;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/f;->a(Ljava/lang/String;)Lcom/google/android/plus1/w;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/plus1/h;->a(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/f;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 146
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->d:Landroid/app/Activity;

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lcom/google/android/youtube/core/BaseApplication;

    const-string v2, "activity is not a compatible activity"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 150
    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .line 151
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->f:Lcom/google/android/youtube/core/utils/i;

    .line 153
    const-string v0, "plusOneClient cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/plus1/f;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->g:Lcom/google/android/youtube/plus1/f;

    .line 154
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 160
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->d:Landroid/app/Activity;

    const-string v1, "setUri cannot be called before init is called"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/plus1/PlusOneButton;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 163
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->b(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->b(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method protected final b()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    return-void
.end method

.method protected final d()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->a:Landroid/widget/FrameLayout;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->b(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->f:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f0a0093

    .line 108
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_14
    const v0, 0x7f0a0092

    goto :goto_b
.end method

.method protected final f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 168
    return-void
.end method

.method protected final h()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 185
    return-void
.end method

.method protected final i()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method
