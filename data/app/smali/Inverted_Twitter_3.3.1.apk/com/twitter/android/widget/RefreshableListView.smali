.class public final Lcom/twitter/android/widget/RefreshableListView;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/twitter/android/widget/ac;


# instance fields
.field private A:Ljava/util/ArrayList;

.field final a:Landroid/widget/Scroller;

.field b:Landroid/widget/RelativeLayout;

.field c:I

.field private d:Lcom/twitter/android/widget/r;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:Lcom/twitter/android/widget/q;

.field private n:Lcom/twitter/android/widget/p;

.field private o:Lcom/twitter/android/widget/o;

.field private final p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->refreshableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->z:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->A:Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/android/ec;->RefreshableListView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    new-instance v0, Lcom/twitter/android/widget/r;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/r;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Lcom/twitter/android/widget/r;

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_66

    sget v3, Lcom/twitter/android/dy;->refresh_divider:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_66
    sget v1, Lcom/twitter/android/dy;->refresh_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ProgressBar;

    sget v1, Lcom/twitter/android/dy;->refresh_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    sget v1, Lcom/twitter/android/dy;->refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->s:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v1, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->v:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .registers 7

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v1, :cond_6

    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v5, -0x2

    invoke-direct {v3, v4, v1, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_2c
    return-void
.end method

.method private e(I)V
    .registers 3

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Lcom/twitter/android/widget/r;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/r;->a(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_4
.end method

.method final a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/o;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRefreshListener must be called before addHeaderView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eq p1, v0, :cond_18

    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    :cond_18
    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_15

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_14
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_15

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_14
.end method

.method public final b()V
    .registers 11

    const/16 v9, 0x20

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v1, :cond_56

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    invoke-interface {v1}, Lcom/twitter/android/widget/o;->f()Lcom/twitter/android/widget/f;

    move-result-object v4

    iget v5, v4, Lcom/twitter/android/widget/f;->c:I

    iget v6, v4, Lcom/twitter/android/widget/f;->a:I

    invoke-interface {v1}, Lcom/twitter/android/widget/o;->d()V

    iget-wide v7, v4, Lcom/twitter/android/widget/f;->b:J

    invoke-interface {v1, v7, v8}, Lcom/twitter/android/widget/o;->a(J)I

    move-result v4

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    if-ne v4, v6, :cond_62

    if-nez v2, :cond_57

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_51
    if-eqz v3, :cond_56

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    :cond_5c
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_56

    :cond_62
    invoke-interface {v1}, Lcom/twitter/android/widget/o;->e()V

    if-eqz v3, :cond_6a

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    :cond_6a
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_56
.end method

.method final b(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:I

    return-void
.end method

.method final c()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    :cond_18
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:Lcom/twitter/android/widget/p;

    invoke-virtual {v0}, Lcom/twitter/android/widget/p;->onChanged()V

    :cond_22
    return-void
.end method

.method final c(I)V
    .registers 4

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:I

    return-void
.end method

.method protected final computeVerticalScrollOffset()I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_4f

    if-lez v1, :cond_4f

    if-lez v2, :cond_4f

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_4f

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v4, v4, 0x64

    div-int v2, v4, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4f
    :goto_4f
    return v0

    :cond_50
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_4f
.end method

.method protected final computeVerticalScrollRange()I
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    mul-int/lit8 v0, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_32

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    :goto_32
    return v0

    :cond_33
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_32
.end method

.method final d()V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottomPaddingOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    :cond_37
    return-void
.end method

.method final d(I)Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final detachViewsFromParent(II)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->detachViewsFromParent(II)V

    goto :goto_7
.end method

.method public final e()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->u:I

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_35

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-gt v3, v0, :cond_27

    if-ne v3, v0, :cond_33

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_33

    :cond_27
    const/16 v1, 0xf

    if-le v3, v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    :cond_2e
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->smoothScrollToPosition(I)V

    move v0, v2

    :goto_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_32

    :cond_35
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    move v0, v2

    goto :goto_32
.end method

.method final f()V
    .registers 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    invoke-virtual {v0}, Lcom/twitter/android/widget/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:I

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    invoke-virtual {v0}, Lcom/twitter/android/widget/q;->a()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:I

    goto :goto_12
.end method

.method public final getFooterViewsCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_a
.end method

.method public final getHeaderViewsCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_a
.end method

.method protected final layoutChildren()V
    .registers 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->z:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/twitter/android/widget/RefreshableListView;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->A:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/twitter/android/widget/RefreshableListView;->a(Ljava/util/ArrayList;)V

    :cond_19
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_8
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-nez v2, :cond_b

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v3, v2

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    sub-int v4, v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    :cond_1b
    :goto_1b
    :pswitch_1b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    :pswitch_20
    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    goto :goto_1b

    :pswitch_27
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_32

    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    goto :goto_1b

    :cond_32
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_3d
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_43
    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v2

    if-lt v0, v2, :cond_1b

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->s:I

    if-le v4, v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_57
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3d

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_27
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->t:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->f()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/16 v10, 0x40

    const/4 v9, 0x2

    const/16 v8, 0x10

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_f
    return v5

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v6, v1

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    sub-int v1, v6, v1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_1b4

    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_f

    :pswitch_27
    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_22

    :pswitch_31
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_22

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v1, :cond_63

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    invoke-interface {v0, v5}, Lcom/twitter/android/widget/o;->a_(Z)V

    invoke-direct {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_22

    :cond_63
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    invoke-interface {v0, v3}, Lcom/twitter/android/widget/o;->a_(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_22

    :pswitch_77
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_82

    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    goto :goto_22

    :cond_82
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_103

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    sub-int v0, v6, v0

    :goto_8c
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_96
    if-eqz v2, :cond_10a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_9c
    iget v4, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    if-lt v6, v4, :cond_10c

    move v4, v5

    :goto_a1
    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_1ae

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v6

    if-lt v2, v6, :cond_1ae

    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->s:I

    if-le v1, v6, :cond_1ae

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    :cond_c2
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawnWithCacheEnabled(Z)V

    if-eqz v7, :cond_12d

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_10e

    if-eqz v4, :cond_fd

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    invoke-interface {v0}, Lcom/twitter/android/widget/o;->b()V

    :cond_fd
    :goto_fd
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto/16 :goto_f

    :cond_103
    move v0, v1

    goto :goto_8c

    :cond_105
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_96

    :cond_10a
    move v2, v3

    goto :goto_9c

    :cond_10c
    move v4, v3

    goto :goto_a1

    :cond_10e
    if-nez v4, :cond_fd

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    invoke-interface {v0}, Lcom/twitter/android/widget/o;->c_()V

    goto :goto_fd

    :cond_12d
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v4, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_189

    invoke-virtual {p0, v4, v3, v0}, Lcom/twitter/android/widget/RefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_141
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    if-eqz v1, :cond_14c

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_190

    :cond_14c
    move v1, v5

    :goto_14d
    if-eqz v1, :cond_197

    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->t:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_192

    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_16a
    invoke-virtual {v4, v6, v0}, Landroid/view/View;->measure(II)V

    :goto_16d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v6

    if-eqz v1, :cond_19b

    add-int/2addr v0, v6

    add-int v1, v2, v3

    invoke-virtual {v4, v6, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :goto_182
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:Lcom/twitter/android/widget/p;

    invoke-virtual {v0}, Lcom/twitter/android/widget/p;->onChanged()V

    goto/16 :goto_fd

    :cond_189
    invoke-virtual {p0, v4, v3, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_141

    :cond_190
    move v1, v3

    goto :goto_14d

    :cond_192
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_16a

    :cond_197
    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/RefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_16d

    :cond_19b
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_182

    :cond_1ae
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    goto/16 :goto_22

    nop

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_27
        :pswitch_31
        :pswitch_77
    .end packed-switch
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    invoke-virtual {v0}, Lcom/twitter/android/widget/q;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_14
    new-instance v0, Lcom/twitter/android/widget/p;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/p;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:Lcom/twitter/android/widget/p;

    new-instance v0, Lcom/twitter/android/widget/q;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->A:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView;->n:Lcom/twitter/android/widget/p;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/q;-><init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/p;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/view/View;

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->l:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/twitter/android/widget/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    sget v1, Lcom/twitter/android/dy;->footer_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/view/View;

    sget v1, Lcom/twitter/android/dy;->footer_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Landroid/widget/TextView;

    :cond_55
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    invoke-virtual {v0}, Lcom/twitter/android/widget/q;->a()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:I

    :goto_5d
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_63
    iput-object v6, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/q;

    iput v7, p0, Lcom/twitter/android/widget/RefreshableListView;->c:I

    goto :goto_5d
.end method
