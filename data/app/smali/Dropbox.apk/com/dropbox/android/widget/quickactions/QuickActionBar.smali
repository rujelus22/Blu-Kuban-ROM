.class public Lcom/dropbox/android/widget/quickactions/QuickActionBar;
.super Lcom/dropbox/android/widget/a;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/CheckBox;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/content/Context;

.field private e:Lcom/dropbox/android/widget/quickactions/j;

.field private f:[Lcom/dropbox/android/widget/quickactions/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 47
    const v0, 0x7f0200eb

    const v1, 0x7f0200e9

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/android/widget/a;-><init>(Landroid/content/Context;II)V

    .line 49
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->d:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Landroid/view/View;)V

    .line 56
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(I)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Z)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b(Z)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c(Z)V

    .line 62
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(II)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/quickactions/QuickActionBar;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/widget/quickactions/QuickActionBar;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final varargs a(Landroid/widget/CheckBox;[Lcom/dropbox/android/widget/quickactions/a;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 101
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    .line 103
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 107
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 108
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 109
    const-wide/high16 v5, 0x4054

    float-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 111
    int-to-float v3, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 112
    array-length v3, p2

    if-gt v3, v1, :cond_42

    .line 115
    array-length v3, p2

    if-ge v3, v1, :cond_33

    .line 116
    div-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    .line 119
    :cond_33
    array-length v1, p2

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_37
    move v3, v2

    .line 124
    :goto_38
    if-ge v3, v0, :cond_48

    .line 125
    aget-object v5, p2, v3

    .line 126
    invoke-virtual {p0, v5, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/quickactions/a;I)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 121
    :cond_42
    add-int/lit8 v1, v1, -0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_37

    .line 129
    :cond_48
    array-length v3, p2

    if-ge v0, v3, :cond_5a

    .line 130
    array-length v3, p2

    sub-int/2addr v3, v0

    .line 131
    new-array v5, v3, [Lcom/dropbox/android/widget/quickactions/a;

    .line 132
    invoke-static {p2, v0, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-instance v0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;

    invoke-direct {v0, p0, v5, p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;-><init>(Lcom/dropbox/android/widget/quickactions/QuickActionBar;[Lcom/dropbox/android/widget/quickactions/a;Lcom/dropbox/android/widget/quickactions/QuickActionBar;)V

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/quickactions/a;I)V

    .line 137
    :cond_5a
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 138
    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v3, v0, 0x2

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Landroid/view/View;IIII)V

    .line 143
    :goto_70
    invoke-static {}, Lcom/dropbox/android/util/h;->e()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 145
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->e:Lcom/dropbox/android/widget/quickactions/j;

    if-eqz v0, :cond_80

    .line 146
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->e:Lcom/dropbox/android/widget/quickactions/j;

    invoke-interface {v0}, Lcom/dropbox/android/widget/quickactions/j;->y()V

    .line 148
    :cond_80
    return-void

    .line 140
    :cond_81
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Landroid/view/View;II)V

    goto :goto_70
.end method

.method protected final a(Lcom/dropbox/android/widget/quickactions/a;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->d:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Lcom/dropbox/android/widget/quickactions/a;->a(Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/widget/quickactions/QuickActionBar;)V

    .line 69
    invoke-virtual {p1}, Lcom/dropbox/android/widget/quickactions/a;->c()Landroid/view/View;

    move-result-object v1

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public final a(Lcom/dropbox/android/widget/quickactions/j;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->e:Lcom/dropbox/android/widget/quickactions/j;

    .line 179
    return-void
.end method

.method public final a([Lcom/dropbox/android/widget/quickactions/a;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->f:[Lcom/dropbox/android/widget/quickactions/a;

    .line 85
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 168
    invoke-static {}, Lcom/dropbox/android/util/h;->f()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 170
    :cond_d
    invoke-super {p0}, Lcom/dropbox/android/widget/a;->c()V

    .line 171
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1a

    .line 172
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b:Landroid/widget/CheckBox;

    .line 175
    return-void
.end method

.method public final e()[Lcom/dropbox/android/widget/quickactions/a;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->f:[Lcom/dropbox/android/widget/quickactions/a;

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->f:[Lcom/dropbox/android/widget/quickactions/a;

    .line 96
    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 154
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a()Landroid/view/View;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v0, v1, :cond_20

    .line 158
    :cond_1b
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c()V

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
