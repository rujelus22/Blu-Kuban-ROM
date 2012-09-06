.class public final Lcom/google/android/youtube/core/player/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ProgressBar;

.field private g:Lcom/google/android/youtube/core/player/bc;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const v0, 0x7f08011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ba;->d:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ba;->e:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/google/android/youtube/core/player/bb;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/bb;-><init>(Lcom/google/android/youtube/core/player/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ba;)Lcom/google/android/youtube/core/player/bc;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->g:Lcom/google/android/youtube/core/player/bc;

    return-object v0
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 85
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/ba;)I
    .registers 2
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/youtube/core/player/ba;->a:I

    return v0
.end method


# virtual methods
.method public final a(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/youtube/core/player/ba;->b:I

    if-eq v0, p1, :cond_f

    .line 50
    iput p1, p0, Lcom/google/android/youtube/core/player/ba;->b:I

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/ba;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 53
    :cond_f
    iget v0, p0, Lcom/google/android/youtube/core/player/ba;->a:I

    if-eq v0, p2, :cond_1e

    .line 54
    iput p2, p0, Lcom/google/android/youtube/core/player/ba;->a:I

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->d:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/ba;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 58
    :cond_1e
    mul-int v0, p3, p2

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/google/android/youtube/core/player/ba;->c:I

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/google/android/youtube/core/player/ba;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/google/android/youtube/core/player/ba;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/google/android/youtube/core/player/ba;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 60
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/bc;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/bc;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ba;->g:Lcom/google/android/youtube/core/player/bc;

    .line 68
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_13

    const/4 v0, 0x0

    .line 72
    :goto_3
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ba;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ba;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ba;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    return-void

    .line 71
    :cond_13
    const/16 v0, 0x8

    goto :goto_3
.end method
