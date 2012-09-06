.class Lcom/google/googlenav/ui/wizard/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/q;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R_()Z
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public S_()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/y;->c()V

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    .line 320
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/y;->c()V

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-virtual {p1}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/ai;)V

    .line 329
    return-void
.end method
