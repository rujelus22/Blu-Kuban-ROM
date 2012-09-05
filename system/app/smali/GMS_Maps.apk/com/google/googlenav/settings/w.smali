.class Lcom/google/googlenav/settings/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/v;

    iget-object v0, v0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->c(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/v;

    iget-object v1, v1, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v1}, Lcom/google/googlenav/settings/q;->d(Lcom/google/googlenav/settings/q;)Lax/k;

    move-result-object v1

    invoke-virtual {v1}, Lax/k;->k()Lax/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/B;->a(Lcom/google/googlenav/settings/B;Lax/j;)Lax/j;

    iget-object v0, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/v;

    iget-object v0, v0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->c(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/RatingReminderManager;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/B;->a(Lcom/google/googlenav/settings/B;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/v;

    iget-object v0, v0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->e(Lcom/google/googlenav/settings/q;)V

    return-void
.end method
