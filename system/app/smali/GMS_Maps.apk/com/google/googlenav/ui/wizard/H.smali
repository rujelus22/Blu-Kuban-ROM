.class Lcom/google/googlenav/ui/wizard/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/j;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/G;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/G;Lax/j;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/H;->b:Lcom/google/googlenav/ui/wizard/G;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lax/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->b:Lcom/google/googlenav/ui/wizard/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/G;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/E;->b(Lcom/google/googlenav/ui/wizard/E;)Lcom/google/googlenav/ui/wizard/I;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lax/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/I;->a(Lax/j;)V

    return-void
.end method
