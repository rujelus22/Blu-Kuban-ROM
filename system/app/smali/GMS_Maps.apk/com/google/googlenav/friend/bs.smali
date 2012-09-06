.class Lcom/google/googlenav/friend/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bv;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/bk;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/friend/bl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/bs;-><init>(Lcom/google/googlenav/friend/bk;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 614
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 615
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Z)Z

    .line 616
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 637
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Las/f;->a(I)V

    .line 638
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 607
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/bk;->b_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 608
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 622
    const/16 v0, 0x2ad

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 623
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Z)Z

    .line 624
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 630
    const/16 v0, 0x2ac

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/friend/bs;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Z)Z

    .line 632
    return-void
.end method
