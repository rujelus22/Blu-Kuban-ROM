.class public Lcom/google/android/apps/translate/asreditor/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"

# interfaces
.implements Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;


# instance fields
.field private mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

.field private mOutsideKeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOutsideTouchViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mView:Landroid/view/View;

    .line 27
    return-void
.end method

.method private forwardOutsideEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 10
    .parameter "event"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 101
    .local v1, localEvent:Landroid/view/MotionEvent;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 102
    .local v0, loc:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    aget v4, v0, v6

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v3, viewRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 110
    .local v2, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 114
    :cond_39
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 115
    return v2
.end method

.method private showPopupWithoutSetup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/graphics/Point;)V
    .registers 4
    .parameter "popup"
    .parameter "point"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    if-eq v0, p1, :cond_7

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->dismissCurrentPopup()V

    .line 92
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    .line 93
    invoke-virtual {p1, p2}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->showAt(Landroid/graphics/Point;)V

    .line 94
    return-void
.end method


# virtual methods
.method public addFallthroughKeyView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public addFallthroughTouchView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public dismissCurrentPopup()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->dismiss()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    .line 78
    :cond_c
    return-void
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mLastShownPopup:Lcom/google/android/apps/translate/asreditor/ArrowPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onOutsideTouch(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "popup"
    .parameter "event"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 121
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/translate/asreditor/PopupManager;->forwardOutsideEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    .end local v1           #view:Landroid/view/View;
    :cond_18
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "popup"
    .parameter "event"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 130
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    .end local v1           #view:Landroid/view/View;
    :cond_18
    return-void
.end method

.method public removeFallthroughKeyView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public removeFallthroughTouchView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public setupPopup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;)V
    .registers 3
    .parameter "popup"

    .prologue
    .line 65
    invoke-virtual {p1, p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->setOnOutsideTouchListener(Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/PopupManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->setWindowToken(Landroid/os/IBinder;)V

    .line 67
    return-void
.end method

.method public showPopup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/graphics/Point;)V
    .registers 3
    .parameter "popup"
    .parameter "point"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/asreditor/PopupManager;->setupPopup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/asreditor/PopupManager;->showPopupWithoutSetup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 86
    return-void
.end method
