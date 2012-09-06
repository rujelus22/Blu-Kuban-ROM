.class public Lcom/google/android/apps/docs/view/FastScrollView;
.super Landroid/widget/LinearLayout;
.source "FastScrollView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lans;

.field private a:Lcom/google/android/apps/docs/view/CustomListView;

.field private a:LsG;

.field private a:LsH;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lans;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/FastScrollView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {p1}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lans;

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/FastScrollView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-static {p1}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lans;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/FastScrollView;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/FastScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 131
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 132
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, LsG;->a(IIIILandroid/content/res/Resources;)V

    .line 134
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/FastScrollView;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/google/android/apps/docs/view/FastScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lans;

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0}, LsG;->a()V

    .line 89
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0}, LsG;->c()V

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()V

    .line 97
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    if-eqz v0, :cond_9

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/CustomListView;->invalidateViews()V

    .line 218
    :cond_9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->a(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 161
    instance-of v0, p2, Lcom/google/android/apps/docs/view/CustomListView;

    if-eqz v0, :cond_35

    .line 162
    check-cast p2, Lcom/google/android/apps/docs/view/CustomListView;

    iput-object p2, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    .line 163
    new-instance v0, LsG;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/CustomListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    invoke-direct {v0, v1, v2, p0}, LsG;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/CustomListView;->setFastScroller(LsG;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsH;

    invoke-virtual {v0, v1}, LsG;->a(LsH;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/CustomListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 169
    :cond_35
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    if-ne p2, v0, :cond_17

    .line 176
    iput-object v2, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:Lcom/google/android/apps/docs/view/CustomListView;

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->b()V

    .line 178
    iput-object v2, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    .line 180
    :cond_17
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, p1, p2, p3, p4}, LsG;->a(Landroid/widget/AbsListView;III)V

    .line 155
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LsG;->a(IIIILandroid/content/res/Resources;)V

    .line 142
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 194
    if-eqz v0, :cond_15

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public setOverlaySize(I)V
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getResources()Landroid/content/res/Resources;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->b(I)V

    .line 118
    return-void
.end method

.method public setOverlayStatusListener(LsH;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsH;

    .line 85
    return-void
.end method

.method public setTextSize(I)V
    .registers 6
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/docs/view/FastScrollView;->a:LsG;

    const/4 v2, 0x2

    int-to-float v3, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, LsG;->c(I)V

    .line 108
    return-void
.end method
