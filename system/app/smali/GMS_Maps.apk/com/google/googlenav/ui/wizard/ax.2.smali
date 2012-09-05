.class Lcom/google/googlenav/ui/wizard/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ay;->d()V

    return-void
.end method
