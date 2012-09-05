.class Lcom/google/googlenav/ui/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/H;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->d(Lcom/google/googlenav/ui/D;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->aa()V

    return-void
.end method
