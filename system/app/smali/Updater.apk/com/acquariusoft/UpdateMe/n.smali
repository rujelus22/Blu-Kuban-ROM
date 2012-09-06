.class public final Lcom/acquariusoft/UpdateMe/n;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Landroid/app/Dialog;

.field c:Landroid/app/Activity;

.field d:Landroid/app/Dialog;

.field e:Lcom/acquariusoft/UpdateMe/b/a/a;

.field f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/n;->f:I

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/n;->c:Landroid/app/Activity;

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/a/d;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/a/d;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/a/d;->a()Lcom/acquariusoft/UpdateMe/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/n;->c:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    sget v2, Lcom/acquariusoft/UpdateMe/ad;->a:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    const-string v2, "Devices"

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    sget v2, Lcom/acquariusoft/UpdateMe/ac;->a:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/n;->c:Landroid/app/Activity;

    const v4, 0x1090003

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/acquariusoft/UpdateMe/o;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/o;-><init>(Lcom/acquariusoft/UpdateMe/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/n;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/b;->a:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41
.end method
