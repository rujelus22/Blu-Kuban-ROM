.class Lcom/google/googlenav/ui/wizard/fM;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fM;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 4
    .parameter

    .prologue
    .line 224
    invoke-virtual {p1}, Lag/c;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fM;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fL;->a(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/view/android/aK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/aK;->d()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fM;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fU;->c()V

    .line 227
    :cond_19
    return-void
.end method
