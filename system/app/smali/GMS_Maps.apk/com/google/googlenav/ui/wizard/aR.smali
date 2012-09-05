.class Lcom/google/googlenav/ui/wizard/aR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aS;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aR;->b:Lcom/google/googlenav/ui/wizard/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aR;->a:Lcom/google/googlenav/ui/wizard/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aR;->a:Lcom/google/googlenav/ui/wizard/aS;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aS;->a()V

    return-void
.end method
