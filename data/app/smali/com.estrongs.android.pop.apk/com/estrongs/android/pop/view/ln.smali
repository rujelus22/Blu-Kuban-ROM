.class Lcom/estrongs/android/pop/view/ln;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ln;->e:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ln;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ln;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ln;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ln;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->e:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->g(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->d:Landroid/widget/ImageView;

    const v2, 0x1080002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_22
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->e:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ln;->e:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->g(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Z

    move-result v2

    if-eqz v2, :cond_48

    :goto_2c
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Z)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ln;->d:Landroid/widget/ImageView;

    const v2, 0x1080003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22

    :cond_48
    const/4 v0, 0x1

    goto :goto_2c
.end method
