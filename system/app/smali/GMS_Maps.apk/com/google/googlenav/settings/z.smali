.class Lcom/google/googlenav/settings/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/x;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/x;

    iget-object v0, v0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->a(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/x;

    iget-object v1, v1, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v1}, Lcom/google/googlenav/settings/q;->c(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/B;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/A;->b(Lcom/google/googlenav/settings/B;)V

    return-void
.end method
