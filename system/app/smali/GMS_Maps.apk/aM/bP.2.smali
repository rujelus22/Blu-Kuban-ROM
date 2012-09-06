.class LaM/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/c;


# instance fields
.field final synthetic a:LaM/bO;


# direct methods
.method constructor <init>(LaM/bO;)V
    .registers 2
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, LaM/bP;->a:LaM/bO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, LaM/bP;->a:LaM/bO;

    iget-object v0, v0, LaM/bO;->a:LaM/bK;

    iget-object v0, v0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->a()V

    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method
