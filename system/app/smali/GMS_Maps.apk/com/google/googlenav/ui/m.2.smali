.class Lcom/google/googlenav/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/m;->a:Lcom/google/googlenav/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/m;->a:Lcom/google/googlenav/ui/l;

    iget-object v0, v0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)V

    return-void
.end method
