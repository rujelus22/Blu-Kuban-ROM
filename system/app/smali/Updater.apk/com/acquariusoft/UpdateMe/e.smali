.class final Lcom/acquariusoft/UpdateMe/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/a;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/a;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/e;->a:Lcom/acquariusoft/UpdateMe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/e;->a:Lcom/acquariusoft/UpdateMe/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
