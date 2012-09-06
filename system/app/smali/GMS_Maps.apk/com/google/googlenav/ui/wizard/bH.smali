.class Lcom/google/googlenav/ui/wizard/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ba;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bh;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bh;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 267
    if-eqz p2, :cond_1d

    .line 268
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bh;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ba;->a(Lcom/google/googlenav/ui/wizard/ba;)Lcom/google/googlenav/ui/wizard/aY;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    const-string v2, "lh"

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;Ljava/lang/String;)V

    .line 275
    :goto_1c
    return-void

    .line 273
    :cond_1d
    const/16 v0, 0x3f3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1c
.end method
