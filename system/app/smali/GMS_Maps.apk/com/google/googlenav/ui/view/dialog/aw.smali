.class Lcom/google/googlenav/ui/view/dialog/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/at;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/at;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aw;->a:Lcom/google/googlenav/ui/view/dialog/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aw;->a:Lcom/google/googlenav/ui/view/dialog/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/at;->a(Lcom/google/googlenav/ui/view/dialog/at;)Lcom/google/googlenav/ui/wizard/cw;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aw;->a:Lcom/google/googlenav/ui/view/dialog/at;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/at;->b(Lcom/google/googlenav/ui/view/dialog/at;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/wizard/iS;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 229
    return-void
.end method
