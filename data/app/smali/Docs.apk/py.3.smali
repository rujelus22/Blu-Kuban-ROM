.class public Lpy;
.super Landroid/app/Dialog;
.source "QuickActionsMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final a:Landroid/view/View;

.field a:Landroid/view/animation/Animation;

.field a:[I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput-object p3, p0, Lpy;->a:Landroid/view/View;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lpy;->a:[I

    .line 83
    invoke-virtual {p0}, Lpy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, LcU;->quick_actions_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpy;->setContentView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lpy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lpz;

    invoke-direct {v1, p0}, Lpz;-><init>(Lpy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/View$OnClickListener;LpA;)Lpy;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v1, Lpy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, LcZ;->QuickActionsMenu:I

    invoke-direct {v1, v0, v2, p0}, Lpy;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    .line 58
    sget v0, LcS;->quick_actions_layout:I

    invoke-virtual {v1, v0}, Lpy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {v1}, Lpy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {p3, v2, v0}, LpA;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 60
    invoke-virtual {v1, p2}, Lpy;->a(Landroid/view/View$OnClickListener;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lpy;->setCanceledOnTouchOutside(Z)V

    .line 62
    invoke-virtual {v1, p1}, Lpy;->a(Landroid/view/animation/Animation;)V

    .line 64
    return-object v1
.end method

.method private a(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 186
    iget-object v0, p0, Lpy;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 187
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 188
    sub-int v1, p2, v0

    .line 190
    invoke-virtual {p0}, Lpy;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 195
    sget v4, LcS;->quick_actions_tab:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 196
    div-int/lit8 v5, v4, 0x2

    sub-int v5, p1, v5

    .line 197
    add-int/2addr v4, v5

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v0, v8

    .line 205
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 206
    sub-int/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 207
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 209
    sget v0, LcS;->quick_actions_tab_layout:I

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TabLayout;

    .line 210
    sub-int v5, p1, v4

    invoke-virtual {v0, v5}, Lcom/google/android/apps/docs/view/TabLayout;->setTabX(I)V

    .line 214
    add-int v5, v1, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v5, v2, :cond_76

    sub-int v2, v1, v7

    if-lez v2, :cond_76

    .line 215
    sub-int/2addr v1, v7

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/TabLayout;->setTabOnBottom(Z)V

    move v0, v1

    .line 222
    :goto_66
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 223
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 224
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 226
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 227
    return-void

    .line 219
    :cond_76
    invoke-virtual {v0, v9}, Lcom/google/android/apps/docs/view/TabLayout;->setTabOnBottom(Z)V

    move v0, v1

    goto :goto_66
.end method

.method private a([I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v0, 0x2

    array-length v1, p1

    invoke-static {v2, v0, v1}, LafQ;->a(III)V

    .line 178
    iget-object v0, p0, Lpy;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 179
    aget v0, p1, v2

    iget-object v1, p0, Lpy;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 180
    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v2, p0, Lpy;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 181
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lpy;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 147
    :goto_4
    return-void

    .line 145
    :cond_5
    sget v0, LcS;->quick_actions_layout:I

    invoke-virtual {p0, v0}, Lpy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lpy;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 6
    .parameter

    .prologue
    .line 121
    sget v0, LcS;->quick_actions_layout:I

    invoke-virtual {p0, v0}, Lpy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 124
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_1a

    .line 125
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 128
    :cond_1d
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lpy;->b:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lpy;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    :cond_d
    iput-object p1, p0, Lpy;->b:Landroid/view/View;

    .line 106
    if-nez p1, :cond_12

    .line 115
    :goto_11
    return-void

    .line 111
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 114
    invoke-virtual {p0}, Lpy;->onGlobalLayout()V

    goto :goto_11
.end method

.method public a(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lpy;->a:Landroid/view/animation/Animation;

    .line 136
    return-void
.end method

.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lpy;->a:[I

    invoke-direct {p0, v0}, Lpy;->a([I)V

    .line 153
    iget-object v0, p0, Lpy;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lpy;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lpy;->a(II)V

    .line 154
    return-void
.end method

.method public onPreDraw()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0}, Lpy;->isShowing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 171
    :cond_8
    :goto_8
    return v0

    .line 162
    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 163
    invoke-direct {p0, v2}, Lpy;->a([I)V

    .line 164
    iget-object v3, p0, Lpy;->a:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 168
    iput-object v2, p0, Lpy;->a:[I

    .line 169
    aget v3, v2, v1

    aget v0, v2, v0

    invoke-direct {p0, v3, v0}, Lpy;->a(II)V

    move v0, v1

    .line 171
    goto :goto_8
.end method
