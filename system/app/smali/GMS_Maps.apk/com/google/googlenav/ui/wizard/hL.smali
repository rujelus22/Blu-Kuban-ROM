.class Lcom/google/googlenav/ui/wizard/hL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hJ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hJ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hL;->a:Lcom/google/googlenav/ui/wizard/hJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hL;->a:Lcom/google/googlenav/ui/wizard/hJ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hJ;->a:Lcom/google/googlenav/ui/wizard/hI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hI;->a()V

    return-void
.end method
