.class Lbd/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/v;

.field final synthetic b:Lbe/i;

.field final synthetic c:Lbd/w;

.field final synthetic d:Lcom/google/googlenav/ui/p;

.field final synthetic e:Lbd/s;


# direct methods
.method constructor <init>(Lbd/s;Lbd/v;Lbe/i;Lbd/w;Lcom/google/googlenav/ui/p;)V
    .registers 6

    iput-object p1, p0, Lbd/u;->e:Lbd/s;

    iput-object p2, p0, Lbd/u;->a:Lbd/v;

    iput-object p3, p0, Lbd/u;->b:Lbe/i;

    iput-object p4, p0, Lbd/u;->c:Lbd/w;

    iput-object p5, p0, Lbd/u;->d:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/ui/android/d;

    iget-object v2, p0, Lbd/u;->a:Lbd/v;

    iget-object v2, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/android/d;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v2}, Lbe/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbd/u;->c:Lbd/w;

    iget-object v0, v0, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6a

    const-string v4, "go"

    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "oi=uddq_experiment"

    aput-object v0, v5, v6

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "experimentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v7}, Lbe/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v7}, Lbe/i;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbd/u;->c:Lbd/w;

    iget-object v7, v7, Lbd/w;->b:Lbe/d;

    invoke-virtual {v7}, Lbe/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v7}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x5

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qvalue="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v7}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ah;->I()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d9
    aput-object v0, v5, v6

    const/4 v6, 0x6

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1db

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qvalue="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v7}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ah;->az()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_109
    aput-object v0, v5, v6

    const/4 v6, 0x7

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1de

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_1de

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qvalue="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v7}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v7

    invoke-virtual {v7}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_149
    aput-object v0, v5, v6

    const/16 v6, 0x8

    iget-object v0, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v0}, Lbe/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1e1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ph="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v7}, Lbe/i;->i()Lbe/h;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lbe/h;->a(J)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_176
    aput-object v0, v5, v6

    const/16 v6, 0x9

    if-nez v2, :cond_1e3

    move-object v0, v1

    :goto_17d
    aput-object v0, v5, v6

    invoke-static {v5}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    if-eqz v0, :cond_1b1

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    iget-object v2, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v2}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v3}, Lbe/i;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbd/u;->b:Lbe/i;

    invoke-virtual {v4}, Lbe/i;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbd/u;->c:Lbd/w;

    iget-object v5, v5, Lbd/w;->b:Lbe/d;

    invoke-virtual {v5}, Lbe/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lbe/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1b1
    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->a()V

    iget-object v0, p0, Lbd/u;->e:Lbd/s;

    invoke-static {v0}, Lbd/s;->a(Lbd/s;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->f()V

    iget-object v0, p0, Lbd/u;->d:Lcom/google/googlenav/ui/p;

    if-eqz v0, :cond_1d7

    iget-object v0, p0, Lbd/u;->d:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x90d

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_1d7
    return-void

    :cond_1d8
    move-object v0, v1

    goto/16 :goto_d9

    :cond_1db
    move-object v0, v1

    goto/16 :goto_109

    :cond_1de
    move-object v0, v1

    goto/16 :goto_149

    :cond_1e1
    move-object v0, v1

    goto :goto_176

    :cond_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17d
.end method
