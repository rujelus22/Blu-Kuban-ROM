.class Lcom/google/googlenav/settings/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/ag;

.field final synthetic b:Lcom/google/googlenav/settings/y;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/y;Lcom/google/googlenav/friend/ag;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/googlenav/settings/A;->b:Lcom/google/googlenav/settings/y;

    iput-object p2, p0, Lcom/google/googlenav/settings/A;->a:Lcom/google/googlenav/friend/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/googlenav/settings/A;->b:Lcom/google/googlenav/settings/y;

    iget-object v0, v0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->c(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/A;->a:Lcom/google/googlenav/friend/ag;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/C;->a(Lcom/google/googlenav/friend/ag;)V

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/settings/A;->b:Lcom/google/googlenav/settings/y;

    iget-object v0, v0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->e(Lcom/google/googlenav/settings/s;)V

    .line 335
    return-void
.end method
