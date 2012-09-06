.class Lcom/google/googlenav/ui/wizard/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gH;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;)V
    .registers 2
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/W;->a:Lcom/google/googlenav/ui/wizard/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 521
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/W;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 515
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/W;->a:Lcom/google/googlenav/ui/wizard/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/U;->a(Lcom/google/googlenav/ui/wizard/U;)V

    .line 516
    return-void
.end method
