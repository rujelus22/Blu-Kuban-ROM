.class final Lcom/acquariusoft/UpdateMe/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/o;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/o;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/p;->a:Lcom/acquariusoft/UpdateMe/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/p;->a:Lcom/acquariusoft/UpdateMe/o;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->e:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/p;->a:Lcom/acquariusoft/UpdateMe/o;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/n;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/a/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/p;->a:Lcom/acquariusoft/UpdateMe/o;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/o;->a:Lcom/acquariusoft/UpdateMe/n;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/n;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
