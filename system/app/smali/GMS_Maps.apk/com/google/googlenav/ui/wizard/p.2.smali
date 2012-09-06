.class Lcom/google/googlenav/ui/wizard/P;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/M;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/M;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 4
    .parameter

    .prologue
    .line 227
    sget-object v0, Lag/b;->i:Lag/c;

    if-ne p1, v0, :cond_5

    .line 237
    :cond_4
    :goto_4
    return-void

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/M;->a()V

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->F()Lcom/google/googlenav/ui/wizard/fn;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fn;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fn;->a()V

    goto :goto_4
.end method
