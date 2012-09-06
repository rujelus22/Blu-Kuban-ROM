.class Lcom/google/googlenav/ui/wizard/dU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aV;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dT;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 201
    const/16 v0, 0xc1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 202
    return-void
.end method

.method public a(Lcom/google/googlenav/a;)V
    .registers 7
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 181
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 190
    :goto_1d
    return-void

    .line 186
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    const/16 v1, 0xc2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/dT;->a(Lcom/google/googlenav/ui/wizard/dT;Lcom/google/googlenav/a;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dT;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/dT;->a(Lcom/google/googlenav/ui/wizard/dT;Ljava/lang/String;)V

    .line 196
    return-void
.end method
