.class Lag/s;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lag/a;

.field final synthetic b:Lag/g;

.field final synthetic c:Lag/q;


# direct methods
.method varargs constructor <init>(Lag/q;Lag/f;[ILag/a;Lag/g;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lag/s;->c:Lag/q;

    iput-object p4, p0, Lag/s;->a:Lag/a;

    iput-object p5, p0, Lag/s;->b:Lag/g;

    invoke-direct {p0, p2, p3}, Lag/g;-><init>(Lag/f;[I)V

    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lag/s;->c:Lag/q;

    invoke-static {v0}, Lag/q;->a(Lag/q;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 185
    iget-object v0, p0, Lag/s;->a:Lag/a;

    invoke-interface {v0}, Lag/a;->c()V

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lag/s;->b()V

    .line 201
    iget-object v0, p0, Lag/s;->b:Lag/g;

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lag/s;->b:Lag/g;

    invoke-virtual {v0, p1}, Lag/g;->a(Lag/c;)V

    .line 204
    :cond_c
    return-void
.end method

.method protected c(Lag/c;)Z
    .registers 3
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lag/s;->b()V

    .line 191
    iget-object v0, p0, Lag/s;->b:Lag/g;

    if-eqz v0, :cond_e

    .line 192
    iget-object v0, p0, Lag/s;->b:Lag/g;

    invoke-virtual {v0, p1}, Lag/g;->b(Lag/c;)Z

    move-result v0

    .line 194
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
