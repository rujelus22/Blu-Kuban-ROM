.class Lcom/google/googlenav/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/g;

.field final synthetic b:Lcom/google/googlenav/ui/Y;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/Y;Lat/g;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/aa;->b:Lcom/google/googlenav/ui/Y;

    iput-object p2, p0, Lcom/google/googlenav/ui/aa;->a:Lat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->b:Lcom/google/googlenav/ui/Y;

    iget-object v0, v0, Lcom/google/googlenav/ui/Y;->a:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/aa;->a:Lat/g;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Lat/g;)V

    return-void
.end method
