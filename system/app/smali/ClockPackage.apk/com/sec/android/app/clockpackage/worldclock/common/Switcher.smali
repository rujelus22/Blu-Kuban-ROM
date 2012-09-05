.class public Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;
.super Landroid/view/ViewGroup;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private handler:Landroid/os/Handler;

.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mAdpCount:I

.field private mCenterIndex:I

.field private mGap:Z

.field private mIsLand:Z

.field private mSelIndex:I

.field private mStartIdx:I

.field private mViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onSwitchListener:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;

.field private position:I

.field private scroller:Landroid/widget/Scroller;

.field private size:I

.field touchDownX:F

.field touchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownX:F

    .line 81
    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownY:F

    .line 108
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mGap:Z

    .line 161
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;

    .line 203
    iput v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mStartIdx:I

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;

    .line 47
    iput v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mCenterIndex:I

    .line 48
    iput v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    .line 50
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->gestureDetector:Landroid/view/GestureDetector;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setFocusableInTouchMode(Z)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/SpinnerAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mCenterIndex:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getPackedViews(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->manageViews(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroll(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->justify()V

    return-void
.end method

.method private getPackedViews(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, 0x1

    .line 147
    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 148
    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    rem-int v0, p1, v1

    .line 149
    .local v0, tmp:I
    if-ltz v0, :cond_1b

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    if-gt v0, v1, :cond_1b

    .line 150
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mGap:Z

    .line 154
    :goto_12
    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    div-int v0, p1, v1

    .line 155
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mGap:Z

    if-ne v1, v2, :cond_1f

    .line 158
    .end local v0           #tmp:I
    :goto_1a
    return v0

    .line 152
    .restart local v0       #tmp:I
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mGap:Z

    goto :goto_12

    .line 158
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method private justify()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 184
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    rem-int v7, v0, v1

    .line 185
    .local v7, offset:I
    if-eqz v7, :cond_2b

    .line 186
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    sub-int v6, v0, v7

    .line 187
    .local v6, endPosition:I
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    div-int/lit8 v0, v0, 0x2

    if-le v7, v0, :cond_16

    .line 188
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    add-int/2addr v6, v0

    .line 190
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    sub-int v3, v6, v3

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    .end local v6           #endPosition:I
    :goto_2a
    return-void

    .line 193
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mCenterIndex:I

    goto :goto_2a
.end method

.method private manageViews(I)V
    .registers 10
    .parameter "startIdx"

    .prologue
    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #view:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .line 212
    .restart local v4       #view:Landroid/view/View;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 213
    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->removeView(Landroid/view/View;)V

    goto :goto_b

    .line 215
    :cond_1e
    const/4 v3, 0x0

    .line 216
    .local v3, textView:Landroid/widget/TextView;
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mStartIdx:I

    .line 217
    add-int/lit8 v0, p1, 0x3

    .line 218
    .local v0, endIdx:I
    add-int/lit8 v5, p1, -0x3

    .line 219
    .local v5, viewIdx:I
    iget-boolean v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mIsLand:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e

    .line 220
    add-int/lit8 v0, p1, 0x5

    .line 221
    add-int/lit8 v5, p1, -0x5

    .line 223
    :cond_2e
    const/4 v1, 0x0

    .line 224
    .local v1, index:I
    :goto_2f
    if-gt v5, v0, :cond_5f

    .line 225
    if-ltz v5, :cond_56

    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    rem-int v1, v5, v6

    .line 226
    :goto_37
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 227
    .restart local v3       #textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mSelIndex:I

    if-ne v1, v6, :cond_5b

    .line 230
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setSelectedTextView(Landroid/widget/TextView;)V

    .line 234
    :goto_50
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->addView(Landroid/view/View;)V

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 225
    :cond_56
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    add-int v1, v6, v5

    goto :goto_37

    .line 232
    :cond_5b
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setUnselectedTextView(Landroid/widget/TextView;)V

    goto :goto_50

    .line 237
    :cond_5f
    return-void
.end method

.method private scroll(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 199
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_a

    .line 201
    .end local v1           #view:Landroid/view/View;
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->invalidate()V

    .line 202
    return-void
.end method

.method private setSelectedTextView(Landroid/widget/TextView;)V
    .registers 4
    .parameter "textView"

    .prologue
    const/16 v1, 0xff

    .line 242
    const/4 v0, 0x0

    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    return-void
.end method

.method private setUnselectedTextView(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textView"

    .prologue
    const/16 v0, 0xff

    .line 239
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    return-void
.end method


# virtual methods
.method public getSelectIndex()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mSelIndex:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 68
    const/4 v1, 0x0

    .local v1, idx:I
    const/4 v2, 0x0

    .line 69
    .local v2, left:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 70
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_c

    .line 71
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mViews:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    add-int/lit8 v5, v1, 0x2

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    sub-int v2, v4, v5

    .line 73
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mIsLand:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    .line 74
    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    add-int/lit8 v5, v1, 0x4

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    sub-int v2, v4, v5

    .line 76
    :cond_41
    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    add-int/2addr v5, v2

    sub-int v6, p5, p3

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    .line 79
    .end local v3           #view:Landroid/view/View;
    :cond_4b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setMeasure()V

    .line 59
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 88
    .local v0, action:I
    if-nez v0, :cond_1c

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownX:F

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownY:F

    .line 106
    :cond_1b
    :goto_1b
    return v5

    .line 91
    :cond_1c
    if-ne v0, v5, :cond_1b

    .line 92
    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41a0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_69

    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x420c

    cmpg-float v3, v3, v4

    if-gez v3, :cond_69

    .line 94
    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->touchDownX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    div-int v1, v3, v4

    .line 95
    .local v1, index:I
    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mStartIdx:I

    add-int/lit8 v3, v3, -0x2

    add-int v2, v3, v1

    .line 96
    .local v2, selectIdx:I
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mIsLand:Z

    if-ne v3, v5, :cond_57

    .line 97
    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mStartIdx:I

    add-int/lit8 v3, v3, -0x4

    add-int v2, v3, v1

    .line 99
    :cond_57
    if-ltz v2, :cond_65

    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    rem-int/2addr v2, v3

    .line 100
    :goto_5c
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setSelection(I)V

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->onSwitchListener:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;

    invoke-interface {v3, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;->onSwitch(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V

    goto :goto_1b

    .line 99
    :cond_65
    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    add-int/2addr v2, v3

    goto :goto_5c

    .line 103
    .end local v1           #index:I
    .end local v2           #selectIdx:I
    :cond_69
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->justify()V

    goto :goto_1b
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;Z)V
    .registers 4
    .parameter "adp"
    .parameter "isLand"

    .prologue
    .line 245
    iput-boolean p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mIsLand:Z

    .line 246
    if-eqz p1, :cond_12

    .line 247
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setMeasure()V

    .line 254
    :goto_11
    return-void

    .line 251
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I

    goto :goto_11
.end method

.method protected setMeasure()V
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mIsLand:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    .line 65
    :cond_15
    return-void
.end method

.method public setOnSwitchListener(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;)V
    .registers 2
    .parameter "onSwitchListener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->onSwitchListener:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;

    .line 42
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setMeasure()V

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mStartIdx:I

    .line 258
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mSelIndex:I

    .line 259
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I

    .line 260
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->manageViews(I)V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->invalidate()V

    .line 262
    return-void
.end method
