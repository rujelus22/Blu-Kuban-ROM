.class final Lcom/acquariusoft/UpdateMe/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/f;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/f;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    const-string v1, "Sort"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/commonsware/cwac/tlv/TouchListView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    new-instance v2, Lcom/acquariusoft/UpdateMe/m;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-direct {v2, v3}, Lcom/acquariusoft/UpdateMe/m;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    iput-object v2, v1, Lcom/acquariusoft/UpdateMe/f;->e:Lcom/acquariusoft/UpdateMe/m;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->e:Lcom/acquariusoft/UpdateMe/m;

    invoke-virtual {v0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/f;->a(Lcom/acquariusoft/UpdateMe/f;)Lcom/commonsware/cwac/tlv/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Lcom/commonsware/cwac/tlv/e;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/f;->b(Lcom/acquariusoft/UpdateMe/f;)Lcom/commonsware/cwac/tlv/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Lcom/commonsware/cwac/tlv/f;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/l;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/l;-><init>(Lcom/acquariusoft/UpdateMe/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/k;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
