.class Lcom/google/googlenav/ui/view/dialog/aa;
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
    .line 283
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aa;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aa;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aa;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ah;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 287
    return-void
.end method
