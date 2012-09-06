.class Lcom/google/googlenav/ui/wizard/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fa;->a:Lcom/google/googlenav/ui/wizard/eT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 482
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    .line 474
    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    new-instance v1, Lax/a;

    invoke-direct {v1, p2}, Lax/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v1}, Lax/r;->a(Lax/A;)Z

    .line 475
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fa;->a:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->i()V

    .line 476
    return-void
.end method
