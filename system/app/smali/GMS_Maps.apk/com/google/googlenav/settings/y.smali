.class Lcom/google/googlenav/settings/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/settings/x;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/x;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/y;->b:Lcom/google/googlenav/settings/x;

    iput-boolean p2, p0, Lcom/google/googlenav/settings/y;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/y;->b:Lcom/google/googlenav/settings/x;

    iget-object v0, v0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->c(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/settings/y;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/B;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/y;->b:Lcom/google/googlenav/settings/x;

    iget-object v0, v0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->e(Lcom/google/googlenav/settings/q;)V

    return-void
.end method
