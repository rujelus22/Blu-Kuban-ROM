.class Lcom/google/googlenav/ui/wizard/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ev;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eo;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ev;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->j(Lcom/google/googlenav/ui/wizard/eo;)V

    return-void
.end method
