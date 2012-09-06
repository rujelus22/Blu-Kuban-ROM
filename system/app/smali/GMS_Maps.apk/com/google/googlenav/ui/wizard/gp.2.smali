.class Lcom/google/googlenav/ui/wizard/gP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gO;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gP;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aF;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gO;->a(Lcom/google/googlenav/ui/wizard/gO;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 106
    :cond_11
    :goto_11
    return v0

    .line 102
    :cond_12
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gO;->b(Lcom/google/googlenav/ui/wizard/gO;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {p1}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 106
    :cond_28
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 97
    check-cast p1, Lcom/google/googlenav/friend/aF;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/gP;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    return v0
.end method
