.class public Lcom/estrongs/android/pop/view/lj;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/view/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/RecommendListView;

.field private b:[Lcom/estrongs/android/pop/view/a/k;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/a/k;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/view/lj;->b:[Lcom/estrongs/android/pop/view/a/k;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lj;->b:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v2, v0, p1

    if-eqz v2, :cond_79

    const v0, 0x7f0701cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/RecommendListView;->g(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1, p1, v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;ILcom/estrongs/android/pop/view/a/k;)Landroid/graphics/Bitmap;

    move-result-object v3

    const v1, 0x7f0701c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v3, :cond_87

    const v3, 0x7f020100

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_58
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1, p2, v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->d(Lcom/estrongs/android/pop/view/RecommendListView;)Z

    move-result v1

    if-eqz v1, :cond_74

    const v1, 0x7f0701c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_74
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_79
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lj;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->b(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_87
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_58
.end method
