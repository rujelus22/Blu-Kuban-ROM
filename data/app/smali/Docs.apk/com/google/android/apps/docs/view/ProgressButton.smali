.class public Lcom/google/android/apps/docs/view/ProgressButton;
.super Lcom/google/android/apps/docs/view/CustomButton;
.source "ProgressButton.java"


# instance fields
.field a:Landroid/widget/ProgressBar;

.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/CustomButton;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/ProgressButton;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/view/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/ProgressButton;->a()V

    .line 31
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    sget v0, LcS;->text:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    move v0, v1

    :goto_11
    invoke-static {v0}, LafQ;->b(Z)V

    .line 36
    sget v0, LcS;->progress:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/ProgressBar;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_28

    :goto_22
    invoke-static {v1}, LafQ;->b(Z)V

    .line 38
    return-void

    :cond_26
    move v0, v2

    .line 35
    goto :goto_11

    :cond_28
    move v1, v2

    .line 37
    goto :goto_22
.end method


# virtual methods
.method public setIndeterminate(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    return-void
.end method

.method public setProgress(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ltz p2, :cond_1f

    move v0, v1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 42
    const/16 v0, 0x64

    if-gt p2, v0, :cond_21

    :goto_c
    invoke-static {v1}, LafQ;->a(Z)V

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ProgressButton;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    return-void

    :cond_1f
    move v0, v2

    .line 41
    goto :goto_5

    :cond_21
    move v1, v2

    .line 42
    goto :goto_c
.end method
