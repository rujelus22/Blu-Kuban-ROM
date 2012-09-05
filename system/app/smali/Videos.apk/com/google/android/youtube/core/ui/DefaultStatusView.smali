.class public Lcom/google/android/youtube/core/ui/DefaultStatusView;
.super Ljava/lang/Object;
.source "DefaultStatusView.java"

# interfaces
.implements Lcom/google/android/youtube/core/ui/PagedView$StatusView;


# instance fields
.field private final errorTextView:Landroid/widget/TextView;

.field private final errorView:Landroid/view/View;

.field private final loadingView:Landroid/view/View;

.field private final retryButton:Landroid/widget/Button;

.field private final rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "rootView"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/DefaultStatusView;->rootView:Landroid/view/View;

    .line 31
    const-string v0, "progressbar"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultStatusView;->loadingView:Landroid/view/View;

    .line 32
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultStatusView;->errorView:Landroid/view/View;

    .line 33
    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultStatusView;->errorTextView:Landroid/widget/TextView;

    .line 34
    const-string v0, "retry_button"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultStatusView;->retryButton:Landroid/widget/Button;

    .line 35
    return-void
.end method
