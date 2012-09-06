.class final Lcom/acquariusoft/UpdateMe/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/n;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/n;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iput p3, v0, Lcom/acquariusoft/UpdateMe/n;->f:I

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    sget v2, Lcom/acquariusoft/UpdateMe/ad;->a:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    const-string v2, "Rom"

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    sget v3, Lcom/acquariusoft/UpdateMe/ac;->a:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v2, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/n;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/n;->f:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/n;->c:Landroid/app/Activity;

    const v4, 0x1090003

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/acquariusoft/UpdateMe/p;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/p;-><init>(Lcom/acquariusoft/UpdateMe/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_a2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/c;->a:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_75
.end method
