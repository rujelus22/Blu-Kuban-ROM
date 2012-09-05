.class Lcom/google/googlenav/ui/view/dialog/aF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    const/4 v12, 0x4

    const/4 v2, 0x0

    const/4 v11, 0x3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Lcom/google/googlenav/ui/view/dialog/aE;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/aE;->b(Lcom/google/googlenav/ui/view/dialog/aE;)Lcom/google/googlenav/ui/view/dialog/aH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/aH;->getCount()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_26
    if-ge v3, v5, :cond_6c

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_30
    :goto_30
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    :cond_34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aE;->b(Lcom/google/googlenav/ui/view/dialog/aE;)Lcom/google/googlenav/ui/view/dialog/aH;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/dialog/aH;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v0, v11}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {v0, v11}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v11}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_52
    invoke-virtual {v0, v12}, Lam/b;->l(I)I

    move-result v8

    move v1, v2

    :goto_57
    if-ge v1, v8, :cond_30

    invoke-virtual {v0, v12, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lam/b;->e(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_6c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0, v6, v7}, Lcom/google/googlenav/ui/wizard/hp;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
