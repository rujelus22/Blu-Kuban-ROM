.class Lcom/google/googlenav/ui/view/dialog/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cw;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cy;->a:Lcom/google/googlenav/ui/view/dialog/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cy;->a:Lcom/google/googlenav/ui/view/dialog/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cw;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->e()V

    .line 80
    return-void
.end method
