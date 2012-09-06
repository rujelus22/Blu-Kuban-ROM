.class Lcom/google/googlenav/ui/wizard/iP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/n;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iK;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iP;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 267
    const/16 v0, 0x513

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iK;)Lcom/google/googlenav/ui/wizard/iR;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iR;->a()V

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iK;->a()V

    .line 270
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iK;)Lcom/google/googlenav/ui/wizard/iR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iP;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iR;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iP;->b:Lcom/google/googlenav/ui/wizard/iK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iK;->a()V

    .line 261
    return-void
.end method
