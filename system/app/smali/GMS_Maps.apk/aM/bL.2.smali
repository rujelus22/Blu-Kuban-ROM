.class LaM/bL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:LaM/bK;


# direct methods
.method constructor <init>(LaM/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, LaM/bL;->a:LaM/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 574
    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "do"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->x()V

    .line 578
    iget-object v0, p0, LaM/bL;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->a(LaM/bK;)V

    .line 579
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 583
    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "dc"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 590
    return-void
.end method
