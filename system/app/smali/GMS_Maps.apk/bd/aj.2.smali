.class public Lbd/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:[Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private final e:I

.field private final f:Lcom/google/googlenav/ui/bh;

.field private g:Lbb/c;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ui/bh;Lbb/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    iput p1, p0, Lbd/aj;->e:I

    iput-object p2, p0, Lbd/aj;->f:Lcom/google/googlenav/ui/bh;

    iput-object p3, p0, Lbd/aj;->g:Lbb/c;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bh;)V
    .registers 7

    iget-object v0, p0, Lbd/aj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2d

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lbd/aj;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03016e

    iget-object v3, p0, Lbd/aj;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbd/aj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lbd/aj;->g:Lbb/c;

    iget-object v2, p1, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    :cond_2d
    return-void
.end method

.method private static b(Landroid/view/View;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/high16 v7, 0x41a8

    const/high16 v6, 0x3f80

    const/4 v5, -0x2

    const v0, 0x7f0f0029

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v1, v2

    :goto_15
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2a
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const v0, 0x7f0f03a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x4198

    invoke-direct {v1, v8, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    if-le p1, v0, :cond_15

    const v1, 0x7f0202e6

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const v1, 0x7f0202e4

    goto :goto_f

    :cond_19
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    const v0, 0x7f0f0348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0f0349

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0f034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0f034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lbd/aj;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0f034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const v0, 0x7f0f0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    iget-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbd/aj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lbd/aj;->a:Landroid/view/LayoutInflater;

    iget v0, p0, Lbd/aj;->e:I

    invoke-virtual {p0, v0}, Lbd/aj;->a(I)V

    iget-object v0, p0, Lbd/aj;->f:Lcom/google/googlenav/ui/bh;

    invoke-direct {p0, v0}, Lbd/aj;->a(Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    invoke-static {v0}, Lbd/aj;->b(Landroid/view/View;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_87
    iget-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    iget-object v1, p0, Lbd/aj;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lbd/aj;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lbd/aj;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lbd/aj;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
