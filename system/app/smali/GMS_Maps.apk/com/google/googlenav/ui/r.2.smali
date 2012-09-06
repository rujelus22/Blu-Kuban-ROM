.class Lcom/google/googlenav/ui/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaI/p;


# instance fields
.field final synthetic a:Lan/h;

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Lan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/google/googlenav/ui/R;->b:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, Lcom/google/googlenav/ui/R;->a:Lan/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/googlenav/ui/R;->a:Lan/h;

    if-eqz v0, :cond_11

    .line 1032
    iget-object v0, p0, Lcom/google/googlenav/ui/R;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->n()Lan/s;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_11

    .line 1034
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 1037
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
