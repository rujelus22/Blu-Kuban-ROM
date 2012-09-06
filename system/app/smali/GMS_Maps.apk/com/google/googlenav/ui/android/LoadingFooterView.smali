.class public Lcom/google/googlenav/ui/android/LoadingFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/view/K;

.field private b:Lcom/google/googlenav/ui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lcom/google/googlenav/ui/view/K;

    if-eqz v0, :cond_b

    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lcom/google/googlenav/ui/view/K;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lcom/google/googlenav/ui/view/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/K;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 39
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 40
    return-void
.end method

.method public setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lcom/google/googlenav/ui/view/K;

    .line 31
    iput-object p2, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lcom/google/googlenav/ui/view/a;

    .line 32
    return-void
.end method
