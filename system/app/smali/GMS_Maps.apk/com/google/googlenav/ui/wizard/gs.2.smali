.class Lcom/google/googlenav/ui/wizard/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gy;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gs;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 740
    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, p1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ai;)V

    .line 741
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gs;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gs;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/ui/wizard/gj;)Lcom/google/googlenav/J;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/v;

    const-string v3, "cstp"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    .line 748
    return-void
.end method
