.class Lcom/google/googlenav/ui/wizard/gC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gC;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gC;->a:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gx;->a()V

    return-void
.end method
