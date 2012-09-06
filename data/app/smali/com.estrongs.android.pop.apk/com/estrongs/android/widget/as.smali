.class public abstract Lcom/estrongs/android/widget/as;
.super Ljava/lang/Object;


# instance fields
.field protected o:Landroid/app/Activity;

.field protected p:Landroid/view/View;

.field q:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/widget/as;->o:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/widget/as;->q:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->q:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/as;->b()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/as;->p:Landroid/view/View;

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/estrongs/android/widget/as;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/as;->p:Landroid/view/View;

    goto :goto_1d
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/as;->c(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/estrongs/android/widget/as;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/as;->o:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->o:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start the activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5
.end method

.method public a([I[I)V
    .registers 7

    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/widget/as;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected abstract b()I
.end method

.method protected b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)Landroid/widget/TextView;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/as;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->p:Landroid/view/View;

    return-object v0
.end method
