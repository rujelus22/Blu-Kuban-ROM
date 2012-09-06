.class public Lcom/anddoes/launcher/QuickSearchBarWidget;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Lcom/anddoes/launcher/Launcher;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/View$OnLongClickListener;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/anddoes/launcher/HolographicLinearLayout;

.field private o:Lcom/anddoes/launcher/HolographicLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    .line 20
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->c:I

    .line 21
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->d:I

    .line 22
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->e:I

    .line 23
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->f:I

    .line 24
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->g:I

    .line 25
    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->h:I

    .line 36
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->a:Lcom/anddoes/launcher/Launcher;

    .line 37
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    instance-of v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;

    if-eqz v0, :cond_a

    .line 162
    check-cast p0, Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 163
    invoke-virtual {p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->a()V

    .line 168
    :cond_9
    :goto_9
    return-void

    .line 164
    :cond_a
    instance-of v0, p1, Lcom/anddoes/launcher/HolographicImageView;

    if-eqz v0, :cond_9

    .line 165
    check-cast p1, Lcom/anddoes/launcher/HolographicImageView;

    .line 166
    invoke-virtual {p1}, Lcom/anddoes/launcher/HolographicImageView;->a()V

    goto :goto_9
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    if-eqz p1, :cond_17

    .line 132
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/HolographicLinearLayout;->a(Landroid/widget/ImageView;)V

    .line 140
    :goto_16
    return-void

    .line 136
    :cond_17
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/HolographicLinearLayout;->a(Landroid/widget/ImageView;)V

    goto :goto_16
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->j:Landroid/widget/RelativeLayout;

    .line 43
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/HolographicLinearLayout;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 47
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/HolographicLinearLayout;

    iput-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->e:I

    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->f:I

    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->g:I

    .line 51
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->h:I

    .line 53
    const-string v0, "ICE_CREAM_SANDWICH"

    iget-object v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->j:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_126

    const v0, 0x7f02007b

    :goto_7b
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 55
    iget-object v3, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    if-eqz v2, :cond_12b

    const v0, 0x7f020031

    :goto_85
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v3, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    if-eqz v2, :cond_130

    const v0, 0x7f020033

    :goto_8f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v3, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_135

    const v0, 0x7f020035

    :goto_99
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 60
    const-string v0, "search"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 61
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 62
    if-nez v3, :cond_c2

    .line 63
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/HolographicLinearLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/HolographicLinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :cond_c2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_dd

    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/HolographicLinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_dd
    invoke-static {v2}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13f

    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz v3, :cond_ea

    .line 76
    invoke-static {v2, v3}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    :cond_ea
    if-eqz v0, :cond_13a

    move v0, v1

    :goto_ed
    iput-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    .line 79
    iget-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Z)V

    .line 80
    iget-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    :goto_fa
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->c:I

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->k:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Landroid/view/View;Landroid/view/View;)V

    .line 88
    :goto_10b
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11f

    .line 89
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->d:I

    .line 91
    :cond_11f
    invoke-virtual {p0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->requestLayout()V

    .line 92
    invoke-virtual {p0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->invalidate()V

    .line 93
    return-void

    .line 54
    :cond_126
    const v0, 0x7f02007a

    goto/16 :goto_7b

    .line 55
    :cond_12b
    const v0, 0x7f020032

    goto/16 :goto_85

    .line 56
    :cond_130
    const v0, 0x7f020034

    goto/16 :goto_8f

    .line 57
    :cond_135
    const v0, 0x7f020036

    goto/16 :goto_99

    .line 78
    :cond_13a
    const/4 v0, 0x0

    goto :goto_ed

    .line 80
    :cond_13c
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    goto :goto_fa

    .line 83
    :cond_13f
    iput-boolean v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    .line 84
    iget-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Z)V

    .line 85
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->c:I

    .line 86
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->l:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_10b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 155
    invoke-virtual {p0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->d(Landroid/content/Context;)V

    .line 157
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->i:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 104
    iget v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->c:I

    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->d:I

    add-int/2addr v1, v2

    .line 105
    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->f:I

    add-int/2addr v1, v2

    .line 106
    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->h:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_35

    .line 107
    iget-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 109
    iget v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->e:I

    .line 110
    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->f:I

    .line 108
    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/anddoes/launcher/HolographicLinearLayout;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 112
    iget v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->g:I

    .line 113
    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->h:I

    div-int/lit8 v2, v2, 0x2

    .line 111
    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/anddoes/launcher/HolographicLinearLayout;->setPadding(IIII)V

    .line 127
    :goto_31
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 128
    return-void

    .line 115
    :cond_35
    iget v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->c:I

    iget v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->d:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_62

    .line 116
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Z)V

    .line 120
    :goto_3f
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 121
    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingTop()I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingBottom()I

    move-result v2

    .line 120
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/anddoes/launcher/HolographicLinearLayout;->setPadding(IIII)V

    .line 123
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 124
    iget-object v1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingTop()I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/HolographicLinearLayout;->getPaddingBottom()I

    move-result v2

    .line 123
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/anddoes/launcher/HolographicLinearLayout;->setPadding(IIII)V

    goto :goto_31

    .line 118
    :cond_62
    iget-boolean v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->b:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/QuickSearchBarWidget;->a(Z)V

    goto :goto_3f
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    iput-object p1, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->i:Landroid/view/View$OnLongClickListener;

    .line 147
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->n:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/anddoes/launcher/QuickSearchBarWidget;->o:Lcom/anddoes/launcher/HolographicLinearLayout;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    return-void
.end method
