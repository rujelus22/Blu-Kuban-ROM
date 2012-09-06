.class Lcom/google/googlenav/ui/wizard/eZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/n;


# instance fields
.field final synthetic a:Lax/m;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;Lax/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eZ;->b:Lcom/google/googlenav/ui/wizard/eT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eZ;->a:Lax/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eZ;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 356
    const/16 v0, 0x2eb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 357
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eZ;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 348
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eZ;->a:Lax/m;

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    new-instance v2, Lax/a;

    invoke-direct {v2, v0}, Lax/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v1, v2}, Lax/r;->a(Lax/A;)Z

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eZ;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->i()V

    .line 351
    return-void
.end method
