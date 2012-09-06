.class Lcom/google/googlenav/ui/wizard/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:LaM/am;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ba;LaM/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bg;->b:Lcom/google/googlenav/ui/wizard/ba;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bg;->a:LaM/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bg;->b:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 241
    if-eqz p2, :cond_20

    .line 242
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bg;->b:Lcom/google/googlenav/ui/wizard/ba;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ba;->a(Lcom/google/googlenav/ui/wizard/ba;)Lcom/google/googlenav/ui/wizard/aY;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bg;->a:LaM/am;

    const-string v3, "lh"

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 249
    :goto_1f
    return-void

    .line 247
    :cond_20
    const/16 v0, 0x3f3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1f
.end method
