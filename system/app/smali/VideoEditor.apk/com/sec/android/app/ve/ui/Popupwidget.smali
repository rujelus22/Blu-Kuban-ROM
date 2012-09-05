.class public Lcom/sec/android/app/ve/ui/Popupwidget;
.super Ljava/lang/Object;
.source "Popupwidget.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field protected final mPopupWindow:Landroid/widget/PopupWindow;

.field private mRootView:Landroid/view/View;

.field protected final mSourceView:Landroid/view/View;

.field protected final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "anchor"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    new-instance v0, Lcom/sec/android/app/ve/ui/Popupwidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/ui/Popupwidget$1;-><init>(Lcom/sec/android/app/ve/ui/Popupwidget;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mSourceView:Landroid/view/View;

    .line 28
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    const-string v1, "window"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->windowManager:Landroid/view/WindowManager;

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/Popupwidget;->onCreate()V

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    return-void
.end method

.method protected onCreate()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method protected onShow()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method protected preShow()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mRootView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    const-string v1, "setContentView was not called with a view to display."

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/Popupwidget;->onShow()V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_40

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 81
    return-void

    .line 69
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "background"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .parameter "layoutResID"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mSourceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, inflator:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/Popupwidget;->setContentView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .parameter "root"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mRootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 105
    return-void
.end method
