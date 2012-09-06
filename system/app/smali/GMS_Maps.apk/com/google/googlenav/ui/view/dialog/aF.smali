.class Lcom/google/googlenav/ui/view/dialog/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/X;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v5}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/ah;->a(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 366
    return-void
.end method
