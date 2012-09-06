.class Lcom/google/googlenav/ui/wizard/fT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 3
    .parameter

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 3
    .parameter

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 575
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/fU;->a(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/fL;->a(Lcom/google/googlenav/ui/wizard/fL;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    const/4 v0, 0x1

    return v0
.end method
