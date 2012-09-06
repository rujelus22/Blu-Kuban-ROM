.class Lcom/google/googlenav/actionbar/e;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;


# direct methods
.method constructor <init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/googlenav/actionbar/e;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 4
    .parameter

    .prologue
    .line 500
    sget-object v0, Lag/b;->f:Lag/c;

    if-eq p1, v0, :cond_21

    sget-object v0, Lag/b;->e:Lag/c;

    if-eq p1, v0, :cond_21

    .line 502
    iget-object v0, p0, Lcom/google/googlenav/actionbar/e;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-static {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_21

    invoke-virtual {v0}, LaM/X;->ax()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 504
    invoke-virtual {v0}, LaM/X;->Z()V

    .line 507
    :cond_21
    return-void
.end method
