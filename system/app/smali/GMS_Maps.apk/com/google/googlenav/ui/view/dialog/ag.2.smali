.class Lcom/google/googlenav/ui/view/dialog/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aF;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aG;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 453
    sget-object v0, Lag/b;->j:Lag/c;

    if-eq p1, v0, :cond_d

    .line 454
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aG;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->a(Lcom/google/googlenav/ui/view/dialog/aF;)Lcom/google/googlenav/ui/view/dialog/aL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aL;->a()V

    .line 456
    :cond_d
    return-void
.end method
