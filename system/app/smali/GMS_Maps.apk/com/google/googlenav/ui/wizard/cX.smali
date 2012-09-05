.class Lcom/google/googlenav/ui/wizard/cX;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cW;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/cW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/cW;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cW;->a(Lcom/google/googlenav/ui/wizard/cW;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    return-void
.end method
