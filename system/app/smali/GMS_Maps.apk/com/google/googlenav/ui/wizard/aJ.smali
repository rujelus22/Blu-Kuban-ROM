.class Lcom/google/googlenav/ui/wizard/aJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaJ/B;

.field final synthetic b:LaE/h;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/aI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aI;LaJ/B;LaE/h;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aJ;->c:Lcom/google/googlenav/ui/wizard/aI;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aJ;->a:LaJ/B;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aJ;->b:LaE/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aJ;->c:Lcom/google/googlenav/ui/wizard/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aI;->a(Lcom/google/googlenav/ui/wizard/aI;)LaE/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aJ;->a:LaJ/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aJ;->b:LaE/h;

    invoke-interface {v0, v1, v2}, LaE/m;->a(LaJ/B;LaE/h;)V

    return-void
.end method
