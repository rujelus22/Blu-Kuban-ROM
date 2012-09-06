.class public Lcom/android/email/view/NonLockingScrollView;
.super Landroid/widget/ScrollView;
.source "NonLockingScrollView.java"


# static fields
.field private static final sHitFrame:Landroid/graphics/Rect;


# instance fields
.field private final mChildrenNeedingAllTouches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInCustomDrag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .registers 2
    .parameter "child"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private excludeChildrenFromInterceptions(Landroid/view/View;)V
    .registers 7
    .parameter "node"

    .prologue
    .line 104
    instance-of v4, p1, Landroid/webkit/WebView;

    if-eqz v4, :cond_a

    .line 105
    iget-object v4, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_9
    return-void

    .line 106
    :cond_a
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    move-object v3, p1

    .line 107
    check-cast v3, Landroid/view/ViewGroup;

    .line 108
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 109
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_9

    .line 110
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/email/view/NonLockingScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method private static isEventOverChild(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z
    .registers 10
    .parameter "ev"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 119
    .local v0, actionIndex:I
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 120
    .local v3, x:F
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 122
    .local v4, y:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 123
    .local v1, child:Landroid/view/View;
    invoke-static {v1}, Lcom/android/email/view/NonLockingScrollView;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 126
    sget-object v5, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 129
    sget-object v5, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 130
    const/4 v5, 0x1

    .line 133
    .end local v1           #child:Landroid/view/View;
    :goto_32
    return v5

    :cond_33
    const/4 v5, 0x0

    goto :goto_32
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 94
    invoke-direct {p0, p0}, Lcom/android/email/view/NonLockingScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 66
    .local v0, action:I
    if-ne v0, v2, :cond_15

    move v1, v2

    .line 68
    .local v1, isUp:Z
    :goto_9
    if-eqz v1, :cond_17

    iget-boolean v4, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    if-eqz v4, :cond_17

    .line 71
    iput-boolean v3, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/email/view/NonLockingScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    :goto_14
    return v2

    .end local v1           #isUp:Z
    :cond_15
    move v1, v3

    .line 66
    goto :goto_9

    .line 76
    .restart local v1       #isUp:Z
    :cond_17
    iget-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/email/view/NonLockingScrollView;->isEventOverChild(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_14

    .line 82
    :cond_28
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 83
    iget-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    if-eqz v2, :cond_35

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/email/view/NonLockingScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_35
    move v2, v3

    .line 88
    goto :goto_14
.end method
