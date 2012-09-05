.class Lbd/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/av;


# direct methods
.method constructor <init>(Lbd/av;)V
    .registers 2

    iput-object p1, p0, Lbd/ax;->a:Lbd/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lbd/ax;->a:Lbd/av;

    invoke-static {v0}, Lbd/av;->a(Lbd/av;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lbd/ax;->a:Lbd/av;

    invoke-static {v0}, Lbd/av;->b(Lbd/av;)Lcom/google/googlenav/ui/wizard/gY;

    move-result-object v0

    iget-object v1, p0, Lbd/ax;->a:Lbd/av;

    invoke-static {v1}, Lbd/av;->a(Lbd/av;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gY;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method
