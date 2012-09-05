.class public Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;
.super Lcom/google/googlenav/ui/android/TemplateView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f024b

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    new-instance v1, Lbb/a;

    const/16 v2, 0x14c

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v4, v4, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f024c

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    new-instance v1, Lbb/a;

    const/16 v2, 0x14d

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->h:Lcom/google/googlenav/ui/bl;

    iget-object v4, v4, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    goto :goto_27
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f024b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f024c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForSuggestedFriend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
