.class Lcom/google/googlenav/ui/wizard/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bv;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    const-string v1, "cancelled"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 343
    if-eqz p1, :cond_1a

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gaiaResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)V

    .line 346
    :cond_1a
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bj;->a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Lcom/google/googlenav/br;)Lcom/google/googlenav/br;

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->b(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 323
    :cond_21
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    const-string v1, "ageFailure"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jc;->a:Lcom/google/googlenav/ui/wizard/ja;

    const-string v1, "backendFailure"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)V

    .line 338
    return-void
.end method
