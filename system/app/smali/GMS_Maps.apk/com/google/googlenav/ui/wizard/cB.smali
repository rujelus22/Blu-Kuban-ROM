.class Lcom/google/googlenav/ui/wizard/cB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cB;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cB;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cA;)V

    return-void
.end method
