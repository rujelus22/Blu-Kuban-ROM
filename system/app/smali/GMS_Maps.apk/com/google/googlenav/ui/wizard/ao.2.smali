.class Lcom/google/googlenav/ui/wizard/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ao;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ao;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ao;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ay;->b(Ljava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ao;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ao;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aj;->e(Lcom/google/googlenav/ui/wizard/aj;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ay;->b(Ljava/lang/String;)V

    goto :goto_1d
.end method
