.class public Lcom/google/android/finsky/layout/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;
    }
.end annotation


# instance fields
.field private mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getViewportTop()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mTop:I

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 44
    iput p2, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mTop:I

    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    if-eqz v0, :cond_e

    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;->onScroll(II)V

    .line 48
    :cond_e
    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V
    .registers 2
    .parameter "onScrollListener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    .line 39
    return-void
.end method
