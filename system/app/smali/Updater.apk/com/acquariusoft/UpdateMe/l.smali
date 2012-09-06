.class final Lcom/acquariusoft/UpdateMe/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/k;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/k;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/l;->a:Lcom/acquariusoft/UpdateMe/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/l;->a:Lcom/acquariusoft/UpdateMe/k;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/l;->a:Lcom/acquariusoft/UpdateMe/k;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/f;->c:Landroid/app/Activity;

    const v3, 0x1090010

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/l;->a:Lcom/acquariusoft/UpdateMe/k;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
