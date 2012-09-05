.class Lbd/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lbd/av;


# direct methods
.method constructor <init>(Lbd/av;)V
    .registers 2

    iput-object p1, p0, Lbd/aw;->a:Lbd/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x42

    if-ne p2, v0, :cond_23

    iget-object v0, p0, Lbd/aw;->a:Lbd/av;

    invoke-static {v0}, Lbd/av;->b(Lbd/av;)Lcom/google/googlenav/ui/wizard/gY;

    move-result-object v0

    iget-object v1, p0, Lbd/aw;->a:Lbd/av;

    invoke-static {v1}, Lbd/av;->a(Lbd/av;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gY;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
