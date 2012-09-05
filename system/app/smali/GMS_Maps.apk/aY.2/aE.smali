.class LaY/aE;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ah;

.field final synthetic b:LaY/aD;


# direct methods
.method constructor <init>(LaY/aD;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ah;)V
    .registers 4

    iput-object p1, p0, LaY/aE;->b:LaY/aD;

    iput-object p3, p0, LaY/aE;->a:Lcom/google/googlenav/ah;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, LaY/aE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LaY/aE;->a:Lcom/google/googlenav/ah;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, LaY/aq;->a(Lcom/google/googlenav/ah;ZZ)Ljava/util/Vector;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    const/16 v1, 0x28b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_35
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bh;

    iget-object v1, v1, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1d3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
