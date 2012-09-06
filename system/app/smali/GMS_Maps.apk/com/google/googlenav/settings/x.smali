.class Lcom/google/googlenav/settings/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/w;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/w;

    iget-object v0, v0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->c(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/w;

    iget-object v1, v1, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v1}, Lcom/google/googlenav/settings/s;->d(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/friend/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/C;->a(Lcom/google/googlenav/settings/C;Lcom/google/googlenav/friend/i;)Lcom/google/googlenav/friend/i;

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/w;

    iget-object v0, v0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->c(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/C;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/RatingReminderManager;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/C;->a(Lcom/google/googlenav/settings/C;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/w;

    iget-object v0, v0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->e(Lcom/google/googlenav/settings/s;)V

    .line 288
    return-void
.end method
