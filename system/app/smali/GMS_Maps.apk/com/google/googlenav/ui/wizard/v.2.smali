.class Lcom/google/googlenav/ui/wizard/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/V;->b:Lcom/google/googlenav/ui/wizard/U;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 486
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ag;->a()V

    .line 487
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/lang/String;)V

    .line 493
    return-void
.end method
