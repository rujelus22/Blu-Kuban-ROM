.class public abstract Lcom/google/android/youtube/core/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/youtube/core/ui/m;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/m;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/m;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->c:Lcom/google/android/youtube/core/ui/m;

    .line 138
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->b:Landroid/content/Context;

    .line 139
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/ui/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/n;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;B)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->a:Landroid/view/View;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->d:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->a:Landroid/view/View;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->e:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->a:Landroid/view/View;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->f:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->a:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/l;->g:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/l;->d()V

    .line 63
    return-void
.end method

.method public final a(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 103
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/l;->b:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/l;->g:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/l;->f:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/l;->e:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_28

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/l;->c()V

    .line 104
    return-void

    :cond_28
    move v0, v1

    .line 103
    goto :goto_1c
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/l;->f:Landroid/widget/Button;

    if-eqz p2, :cond_23

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/l;->c()V

    .line 119
    return-void

    :cond_23
    move v0, v2

    .line 114
    goto :goto_d
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/l;->d()V

    .line 70
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/l;->c:Lcom/google/android/youtube/core/ui/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/m;->h()V

    .line 134
    return-void
.end method
