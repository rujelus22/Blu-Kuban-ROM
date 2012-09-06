.class public LNy;
.super Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;
.source "PunchWebView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, LNy;->a:Z

    .line 33
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, LNy;->a:Z

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p0}, LNy;->clearView()V

    .line 28
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->onSizeChanged(IIII)V

    .line 29
    return-void
.end method
