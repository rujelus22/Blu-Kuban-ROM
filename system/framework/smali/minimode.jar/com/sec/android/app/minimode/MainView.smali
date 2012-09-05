.class public Lcom/sec/android/app/minimode/MainView;
.super Landroid/widget/RelativeLayout;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainView"


# instance fields
.field private mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

.field private mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

.field private mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 39
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;->onAttachedToWindow()V

    .line 78
    :cond_9
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;->onDetachedFromWindow()V

    .line 86
    :cond_9
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 87
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;->onWindowFocusChanged(Z)V

    .line 71
    :cond_c
    return-void
.end method

.method public setOnAttachedToWindowListener(Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 59
    return-void
.end method

.method public setOnDetachedFromWindowListener(Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 63
    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 55
    return-void
.end method
