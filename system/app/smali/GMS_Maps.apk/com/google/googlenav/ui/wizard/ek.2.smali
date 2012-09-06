.class public Lcom/google/googlenav/ui/wizard/eK;
.super Landroid/support/v4/view/x;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 129
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
