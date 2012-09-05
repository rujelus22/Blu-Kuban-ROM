.class Lcom/google/googlenav/ui/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaJ/B;

.field final synthetic b:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;LaJ/B;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/J;->b:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, Lcom/google/googlenav/ui/J;->a:LaJ/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/J;->b:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/J;->a:LaJ/B;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(LaJ/B;)V

    return-void
.end method
