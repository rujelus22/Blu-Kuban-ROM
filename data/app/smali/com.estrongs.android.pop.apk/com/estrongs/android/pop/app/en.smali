.class Lcom/estrongs/android/pop/app/en;
.super Lcom/estrongs/android/widget/al;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V
    .registers 13

    iput-object p1, p0, Lcom/estrongs/android/pop/app/en;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/al;-><init>(Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/widget/al;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f070257

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/en;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->n(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_49

    iget-object v1, p0, Lcom/estrongs/android/pop/app/en;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->n(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/estrongs/android/pop/app/en;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->n(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    const v1, -0xeaab6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_45
    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    return-object v2

    :cond_49
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_45
.end method
