.class Lcom/google/googlenav/ui/view/dialog/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz/l;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bO;Laz/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v0}, Laz/l;->o()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v0}, Laz/l;->n()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v0}, Laz/l;->p()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 145
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->q()Landroid/view/View;

    move-result-object v1

    .line 148
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 149
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/view/dialog/bO;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/view/dialog/bS;-><init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/content/Context;Lcom/google/googlenav/ui/view/dialog/bP;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;Lcom/google/googlenav/ui/view/dialog/bS;)Lcom/google/googlenav/ui/view/dialog/bS;

    .line 151
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 152
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bS;->add(Ljava/lang/Object;)V

    .line 157
    :goto_51
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v2}, Laz/l;->p()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 158
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v3}, Laz/l;->h()[Laz/f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;[Laz/f;)V

    .line 160
    :cond_64
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v2}, Laz/l;->n()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 161
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bP;->a:Laz/l;

    invoke-virtual {v3}, Laz/l;->f()[Laz/f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;[Laz/f;)V

    .line 163
    :cond_77
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    const v0, 0x7f1003ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_8e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 170
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bS;->notifyDataSetChanged()V

    .line 172
    :cond_9f
    return-void

    .line 155
    :cond_a0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bP;->b:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bO;->i()Laz/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bS;->add(Ljava/lang/Object;)V

    goto :goto_51
.end method
