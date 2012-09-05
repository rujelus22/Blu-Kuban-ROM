.class public Lcom/google/googlenav/ui/wizard/a;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/A;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/A;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/c;-><init>()V

    invoke-static {}, LaQ/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/a;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/A;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/a;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f014e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0247

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0246

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v4, "+"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/c;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/c;-><init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f01b1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/d;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/d;-><init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lcom/google/googlenav/ui/wizard/C;)V
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f014e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0247

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0246

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/a;->c:Ljava/util/Map;

    invoke-static {v2, p3}, LaQ/a;->a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/C;)I

    move-result v4

    const v2, 0x7f0f0061

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f02028a

    if-ne v4, v2, :cond_5e

    iget-object v2, p3, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5e
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/A;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/b;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/b;-><init>(Lcom/google/googlenav/ui/wizard/a;)V

    const v0, 0x7f0f02b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/a;->a(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/wizard/C;

    invoke-direct {p0, v0, v3, v1}, Lcom/google/googlenav/ui/wizard/a;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lcom/google/googlenav/ui/wizard/C;)V

    goto :goto_24

    :cond_34
    return-object v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/A;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->e()V

    return-void
.end method
