.class public abstract Lcom/google/android/youtube/core/ui/StatusHelper;
.super Ljava/lang/Object;
.source "StatusHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/StatusHelper$1;,
        Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;,
        Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private errorIcon:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private retryButton:Landroid/widget/Button;

.field private final retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

.field protected statusView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V
    .registers 4
    .parameter "context"
    .parameter "retryListener"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    .line 138
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    return-void
.end method

.method public static createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;
    .registers 5
    .parameter "context"
    .parameter "view"
    .parameter "retryListener"

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V

    return-object v0
.end method


# virtual methods
.method protected abstract ensureHidden()V
.end method

.method protected abstract ensureVisible()V
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureHidden()V

    .line 70
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureHidden()V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;->onRetry()V

    .line 134
    return-void
.end method

.method public setErrorMessage(IZ)V
    .registers 4
    .parameter "messageResource"
    .parameter "canRetry"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;Z)V
    .registers 7
    .parameter "message"
    .parameter "canRetry"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    if-eqz p2, :cond_23

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureVisible()V

    .line 119
    return-void

    :cond_23
    move v0, v2

    .line 114
    goto :goto_d
.end method

.method public setLoading()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureVisible()V

    .line 81
    return-void
.end method

.method public setMessage(IZ)V
    .registers 4
    .parameter "messageResource"
    .parameter "hasProgress"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public setMessage(Ljava/lang/String;Z)V
    .registers 6
    .parameter "message"
    .parameter "hasProgress"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_22

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureVisible()V

    .line 95
    return-void

    :cond_22
    move v0, v1

    .line 92
    goto :goto_16
.end method
