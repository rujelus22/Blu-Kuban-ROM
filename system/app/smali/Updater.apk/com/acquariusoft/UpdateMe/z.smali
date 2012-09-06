.class final Lcom/acquariusoft/UpdateMe/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/x;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/x;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/z;->a:Lcom/acquariusoft/UpdateMe/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/z;->a:Lcom/acquariusoft/UpdateMe/x;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/x;->a(Lcom/acquariusoft/UpdateMe/x;)Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    move-result-object v0

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->c:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
