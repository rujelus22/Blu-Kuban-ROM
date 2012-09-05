.class Lcom/google/googlenav/ui/S;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/R;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/S;->a:Lcom/google/googlenav/ui/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/S;->a:Lcom/google/googlenav/ui/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->e(Lcom/google/googlenav/ui/D;)V

    return-void
.end method
